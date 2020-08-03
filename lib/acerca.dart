
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class acerca extends StatefulWidget {
  @override

  _acercaState createState() => _acercaState();
}


class _acercaState extends State<acerca> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          

           physics: AlwaysScrollableScrollPhysics(),
          children: <Widget>[
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 
              children: <Widget>[
            SizedBox(
              height:12,
            ),

         Container(
           transform: Matrix4.translationValues(0, -1, 0),

           child:Row(
              children:<Widget>[

            Image.asset("assets/Fotos/image.png"),

            Spacer(),

               

            Text(
              "Universidad tecnologica de Panama",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),

            Spacer(),


            Image.asset("assets/Fotos/imagefsc.png")



              ]

           )

         ),



      Text(
        
                
                "Facultad de Ingeniería de Sistemas Computacionales",
                  textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
             
                   color: Colors.black,
                ),
              ),


                   Text(
              "Curso de Sistemas Basados en el Conocimiento (SBC)",
                textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              
                 color: Colors.black,
              ),
            ),
                       Text(
              "Proyecto Final",
              style: TextStyle(
                fontSize: 16,
           
             color: Colors.black,
              ),
            ),

            SizedBox(
               height: 40,
            ),


            Container(
              padding: EdgeInsets.all(9),


              height: 120,
              color: Colors.black12,

              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                         Text(
              "Titulo:",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16,
            fontWeight: FontWeight.bold,
             color: Colors.black,
              ),
            ),
            Text(
              "Prototipo de un Sistema Experto para la clasificación de plantas ornamentales utilizando Deep Learning",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),

                ]

              ),

            ),


            SizedBox(
               height: 20,
            ),




             Container(

               padding: EdgeInsets.all(9),

              height: 130,
              width: 400,
              color: Colors.black12,

              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                         Text(
              "Integrantes:",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16,
            fontWeight: FontWeight.bold,
             color: Colors.black,
              ),
            ),
            Text(
              "• Judith Ruiz",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),
             Text(
              "• José Mendoza A",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),
             Text(
              "• Adriano Rodríguez",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),
                ]

              )

                  

            ),

            SizedBox(
              height: 12,
            ),

                    Container(

               padding: EdgeInsets.all(9),

              height: 300,
              width: 400,
              color: Colors.black12,

              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                         Text(
              "Prototipo:",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16,
            fontWeight: FontWeight.bold,
             color: Colors.black,
              ),
            ),
            Text(
              "Realizado con tensorFlow lite y Android Studio (Flutter SDK).",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),
             Text(
              "Número de clases:6.",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),

             SizedBox(
              height: 5,
            ),


              Text(
              "Clases Incluidas(Plantas):",
              style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.bold,
            
             color: Colors.black,
              ),
            ),
                SizedBox(
              height: 5,
            ),

                  Text(
              "• Tradescantia zebrina",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),

            SizedBox(
              height: 3,
            ),


                  Text(
              "• Begonia Cucullata",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),

              SizedBox(
              height: 3,
            ),


                  Text(
              "• Euphorbia milii",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),

              SizedBox(
              height: 3,
            ),


                  Text(
              "• Opuntia ficus-indica",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),

              SizedBox(
              height: 3,
            ),


                  Text(
              "• Aucuba japónica 'Crotonifolia'",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),

              SizedBox(
              height: 3,
            ),


                  Text(
              "• Catharanthus roseus",
              style: TextStyle(
                fontSize: 16,
            
             color: Colors.black,
              ),
            ),

              SizedBox(
              height: 3,
            ),

    
                ]

              )

                  

            )


           






                ],


              ),

          ]
            
               )
    
        )
    );

  
  }
}
