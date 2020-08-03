
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:proyectosbc/Camara.dart';
import 'package:proyectosbc/Recursos/Body.dart';
import 'Camara.dart';
import 'package:proyectosbc/Recursos/Constantes.dart';




class PreviewImageScreen extends StatefulWidget {
  final String imagePath;

  PreviewImageScreen({this.imagePath});

  @override
  _PreviewImageScreenState createState() => _PreviewImageScreenState();
}




class _PreviewImageScreenState extends State<PreviewImageScreen> {



  @override


  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Scaffold(
      
       body: Column(
       children: <Widget>[
        Encabezado(size: size, widget: widget),
        Container(
          alignment: Alignment.centerLeft,
          height: 70,
        

        ),
        Positioned(
            top: 100,
            bottom: 20,
            left: 16,
            child: Stack(children: <Widget>[
            Text('Resultado',
            style:TextStyle
           (color: Colors.black,
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
            

            )
           
            
            ),
            


          ],
          ),
          
        ),

       

        SingleChildScrollView (
          scrollDirection: Axis.horizontal,
                  child: Row(
            children: <Widget>[
              Scrollplantas(size: size),
               Scrollplantas(size: size),
                Scrollplantas(size: size),
                 Scrollplantas(size: size),
            ],
          ),
        )



      ]
   

    )

    );


  }























  AppBar buildAppBar() {
    return AppBar(

      title: Text("hola"),
      backgroundColor: Colors.blueGrey,
    );
  }

  Future<ByteData> getBytesFromFile() async {
    Uint8List bytes = File(widget.imagePath).readAsBytesSync() as Uint8List;
    return ByteData.view(bytes.buffer);
  }

}

class Scrollplantas extends StatelessWidget {
  const Scrollplantas({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: espaciopadding,top: espaciopadding/2,bottom: espaciopadding*2.5),
     width:size.width*0.4,
     child:Column(children: <Widget>[
       Image.asset("assets/Fotos/image_1.png"),
    
     ],)

    );
  }
}




class Encabezado extends StatelessWidget {
  const Encabezado({
    Key key,
    @required this.size,
    @required this.widget,
  }) : super(key: key);

  final Size size;
  final PreviewImageScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: espaciopadding*3),
       height:size.height * 0.3,
       color: Colors.black,

          
          child: Stack(
            children: <Widget>[

              Container(
                height:size.height*0.35-27,
                decoration: BoxDecoration(
                color: color1,
                borderRadius:BorderRadius.only(

                  bottomLeft:Radius.circular(36),
                   bottomRight:Radius.circular(36),
                )
              ),
                
              
               child:Image.file(
               File(widget.imagePath,),
                height: MediaQuery.of(context).size.height*1,
                width: MediaQuery.of(context).size.width*2,
                fit: BoxFit.cover,
                      
                ),
              ),
              Positioned(
                bottom: 35,
                left: 70,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius:BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset:Offset(0,10),
                        blurRadius: 50,
                        color: Colors.black.withOpacity(0.23)

                      ),
                    ],
                
                  ),
                 
                child: TextField(

                   
                    decoration: InputDecoration(
                    hintText:"Begonia",

                    hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.3,
                    
                  ),
                

                ),

                ),
                
                  
            
                )
                )
         





            ],
          
          
          ),
          

    );
  }
}




