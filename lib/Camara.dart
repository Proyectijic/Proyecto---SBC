import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:proyectosbc/Screens/agrial.dart';
import 'package:proyectosbc/Screens/aucuba.dart';
import 'package:proyectosbc/Screens/catha.dart';
import 'package:proyectosbc/Screens/coladepollo.dart';
import 'package:proyectosbc/Screens/corona.dart';
import 'Resultado1.dart';
import 'package:image/image.dart' as im;
import 'package:tflite/tflite.dart';
import 'package:path/path.dart' show join;



Future<List<CameraDescription>> getAvailableCameras() async {
  List<CameraDescription> cameras = await availableCameras();
  return cameras;
}

Uint8List imageToByteListFloat32(
    im.Image image, int inputSize, double mean, double std) {
  Float32List convertedBytes = Float32List(1 * inputSize * inputSize * 3);
  Float32List buffer = Float32List.view(convertedBytes.buffer);
  int pixelIndex = 0;
  for (int i = 0; i < inputSize; i++) {
    for (int j = 0; j < inputSize; j++) {
      int pixel = image.getPixel(j, i);
      buffer[pixelIndex++] = (im.getRed(pixel) - mean) / std;
      buffer[pixelIndex++] = (im.getGreen(pixel) - mean) / std;
      buffer[pixelIndex++] = (im.getBlue(pixel) - mean) / std;
    }
  }
  return convertedBytes.buffer.asUint8List();
}

class CamaraSCREEN extends StatefulWidget {
  @override
  _CamaraState createState() => _CamaraState();
}



class _CamaraState extends State<CamaraSCREEN> {
  CameraController controller;
  List cameras;
  int selectedCameraIdx;
  String imagePath;
  bool isCameraReady = false;
  File imageURI;
  String path;
  String result ='';



  void activateDetector() {

      Tflite.loadModel(
          model: "assets/modelo.tflite",
          labels: "assets/labels.txt",
          numThreads: 1);
    }



  @override

  void initState() {
    super.initState();
    availableCameras().then((availableCameras) {

      cameras = availableCameras;

      if (cameras.length > 0) {
        setState(() {
          selectedCameraIdx = 0;
        });

        _initCameraController(cameras[selectedCameraIdx]).then((void v) {});
      }else{
        print("No camera available");
      }
    }).catchError((err) {
      print('Error: $err.code\nError Message: $err.message');
    });
  }
  
  Future _initCameraController(CameraDescription cameraDescription) async {
    if (controller != null) {
      await controller.dispose();
    }

    controller = CameraController(cameraDescription, ResolutionPreset.high);

    // If the controller is updated then update the UI.
    controller.addListener(() {
      if (mounted) {
        setState(() {});
      }

      if (controller.value.hasError) {
        print('Camera error ${controller.value.errorDescription}');
      }
    });

    try {
      await controller.initialize();
    } on CameraException catch (e) {
      _showCameraException(e);
    }

    if (mounted) {
      setState(() {});
    }
  }




  Widget build(BuildContext context) {
    CameraController controller;
    return Stack(

        children: [
          Container(
            //child: Text(widget.result),

            child: SafeArea(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: _cameraPreviewWidget(),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _cameraTogglesRowWidget(),
                      _captureControlRowWidget(context),
                      Spacer()
                    ],
                  ),

                  SizedBox(height: 20.0)
                ],
              ),
            ),
          ),
        ],
        );


  }




  Widget _cameraPreviewWidget() {
    if (controller == null || !controller.value.isInitialized) {
      return const Text(
        'Loading',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
        ),
      );
    }

    return AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: CameraPreview(controller),
      );
  }

    void _showCameraException(CameraException e) {
    String errorText = 'Error: ${e.code}\nError Message: ${e.description}';
    print(errorText);

    print('Error: ${e.code}\n${e.description}');
  }



    void _onCapturePressed(context) async {


      // Attempt to take a picture and log where it's been saved
      final path = join(
        // In this example, store the picture in the temp directory. Find
        // the temp directory using the `path_provider` plugin.
        (await getTemporaryDirectory()).path,
        '${DateTime.now()}.png',
      );
      await controller.takePicture(path);


      im.Image image = im.decodeImage(File(path).readAsBytesSync());
      int cropSize = min(image.width, image.height);
      int offsetX = (image.width - min(image.width, image.height)) ~/ 2;
      int offsetY = (image.height - min(image.width, image.height)) ~/ 2;

      im.Image imageSquare =
      im.copyCrop(image, offsetX, offsetY, cropSize, cropSize);

      int imgSize = 224;
      im.Image imageResized = im.copyResize(imageSquare,
          width: imgSize, height: imgSize, interpolation: im.Interpolation.cubic);


      Tflite.runModelOnBinary(
          binary: imageToByteListFloat32(imageResized, imgSize, 127.5, 127.5))
          .then((recognitions) {
        if (recognitions.length > 0) {
          print(recognitions.first);

          setState(() {
            result = recognitions.first['label'];
            print(result);
            if (result == "aucuba")  {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Aucuba(imagePath: path),
                  ));
            }

            if (result == "Nopal")  {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultado1(imagePath: path),
                  ));
            }

                  if (result == "Corona_de_Cr...")  {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Corona(imagePath: path),
                  ));
            }

                      if (result == "Agrial")  {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Agrial(imagePath: path),
                  ));
            }

                          if (result == "Carantus")  {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Catharanthus(imagePath: path),
                  ));
            }

                      if (result == "Cola_de_Poll...")  {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Coladepollo(imagePath: path),
                  ));
            }




          });
        }
      });





      }







  Widget _cameraTogglesRowWidget() {
    if (cameras == null || cameras.isEmpty) {
      return Spacer();
    }

    CameraDescription selectedCamera = cameras[selectedCameraIdx];
    CameraLensDirection lensDirection = selectedCamera.lensDirection;

    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: FlatButton.icon(
            onPressed: _onSwitchCamera,
            icon: Icon(_getCameraLensIcon(lensDirection)),
            label: Text(
                "${lensDirection.toString().substring(lensDirection.toString().indexOf('.') + 1)}")),
      ),
    );
  }






  IconData _getCameraLensIcon(CameraLensDirection direction) {
    switch (direction) {
      case CameraLensDirection.back:
        return Icons.camera_rear;
      case CameraLensDirection.front:
        return Icons.camera_front;
      case CameraLensDirection.external:
        return Icons.camera;
      default:
        return Icons.device_unknown;
    }
  }

  void _onSwitchCamera() {
    selectedCameraIdx =
    selectedCameraIdx < cameras.length - 1 ? selectedCameraIdx + 1 : 0;
    CameraDescription selectedCamera = cameras[selectedCameraIdx];
    _initCameraController(selectedCamera);
  }

    Widget _captureControlRowWidget(context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Row(

          
          mainAxisAlignment: MainAxisAlignment.center,
         

          children: [
         

            FloatingActionButton(

                child: Icon(Icons.camera_enhance),
                backgroundColor: Color(0xFF0C9869),
                onPressed: () {

                  _onCapturePressed(context);
                  activateDetector();




                })
          ],
        ),
      ),
    );

  }






}

