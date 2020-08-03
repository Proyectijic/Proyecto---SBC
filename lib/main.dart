import 'package:flutter/material.dart';
import 'package:proyectosbc/Screens/agrial.dart';
import 'package:proyectosbc/acerca.dart';
import 'package:proyectosbc/Camara.dart';
import 'package:proyectosbc/Recursos/Constantes.dart';

void main() {

  runApp(Proyectosbc());
}



class Proyectosbc extends StatefulWidget {

  @override
  _ProyectosbcState createState() => _ProyectosbcState();
}


class _ProyectosbcState extends State<Proyectosbc> {

  int _selectedItemIndex = 0;
  bool isCameraReady = false;
  final List pages = [
      acerca(),
    CamaraSCREEN(),
  
  ];
  @override

  Widget build(BuildContext context) {



    return MaterialApp(
      title: 'Clasificacion de Plantas',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        



          




          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Color(0xFFF0F0F0),
            unselectedItemColor: Colors.grey,
            selectedItemColor: Color(0xFF0C9869),
            selectedIconTheme: IconThemeData(color: Color(0xFF0C9869)),
            currentIndex: _selectedItemIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              setState(() {
                _selectedItemIndex = index;
                final List pages = [
                  acerca(),
                  CamaraSCREEN(),
               
                ];
              });
            },
            items: [
              BottomNavigationBarItem(
                title: Text("Inicio"),
                icon: Icon(Icons.home),


              ),
              BottomNavigationBarItem(
                title: Text("Cámara"),
                icon: Icon(
                  
                

                 
                Icons.camera_enhance),
              ),
       


            ],
          ),
          body: pages[_selectedItemIndex]
          
      ),
    );
  }
}
