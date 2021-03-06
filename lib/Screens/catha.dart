
import 'dart:io';
import 'dart:ui';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:proyectosbc/Camara.dart';
import 'package:proyectosbc/Recursos/Body.dart';

import 'package:proyectosbc/Recursos/Constantes.dart';
import 'package:path_provider/path_provider.dart';



class Catharanthus extends StatefulWidget {
  final String imagePath;
 
  Catharanthus({this.imagePath});

  @override
  _Catharanthus createState() => _Catharanthus();
}



class _Catharanthus extends State<Catharanthus> {

  @override


  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),

     //backgroundColor: Colors.black45,
      body:ListView(
        
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
       

     
           Column(children: <Widget>[

          //Container Imagen
          Container(
        
            height:size.height * 0.2,
            child: Stack(
            children: <Widget>[

          //imagen - Carga
              Container(
                  transform: Matrix4.translationValues(0, -1, 0),
                  height: size.height*0.60,
            

                  child: Image.file(
                   File(widget.imagePath,
                    ),
                    height: MediaQuery.of(context).size.height*1.5,
                    width: MediaQuery.of(context).size.width*2,
                    fit: BoxFit.cover,
 
                    ),


                   ),
            //Nombre imagen
              Positioned(
                bottom: 1,
                right: 8,
                  child: Column(children: <Widget>[
                    Text('Catharanthus',

                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                        
                      ),

                    )

                  ],),

                ),

              ],
          
              ), 
            ),

            
          //Resultado 
          Container(


          padding: EdgeInsets.only(bottom: 0.1,right: 12,left: 70,),
          
          transform: Matrix4.translationValues(-55, 10, 0),
          height: 84,
          
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          

           children:<Widget>[
            
          
              
              RichText(text:TextSpan(children:<TextSpan>[
                TextSpan(text:"Nombre botánico: ",style:TextStyle(color:Colors.black, fontSize:17,fontWeight:FontWeight.bold)),
                TextSpan(text:"Catharanthus roseus.",style: TextStyle(color:Colors.black45, fontSize:16,fontStyle:FontStyle.italic)),

              ]
              )
              ),
          

        
            
          RichText(text:TextSpan(children:<TextSpan>[
                TextSpan(text:"Conocido como: ",style:TextStyle(color:Colors.black,fontSize:17,fontWeight:FontWeight.bold)),
                TextSpan(text:"no me olvides, yerba doncella de Java, Chavelita, vinca de Madagascar.",style: TextStyle(color:Colors.black45,fontSize:16,fontStyle:FontStyle.italic)),

              ]
              )
              ),
        
        
          
            ]
          )
                  ),
  

           //scroll imagenes
         
           
           SingleChildScrollView (
             padding: EdgeInsets.only(top:2,left: 0),
             
            
            
          scrollDirection: Axis.horizontal,
                  child: Row(
                    
                    
            children: <Widget>[
              
            
              
              Scrollplantas(size: size),
               Scrollplantas1(size: size),
                Scrollplantas2(size: size),
                 Scrollplantas3(size: size),
              
         
            ],
          ),
        ),

            //Containers de resultados

            //Container 1 
            //Descipcion 
              Container(
                 
                  padding: EdgeInsets.only(top:12,left: 12,right: 12,bottom: 12),
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
                  transform: Matrix4.translationValues(0, -40, 0),
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
                      color: Colors.white,


                      ),

                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>
                    [
                      Row(
                      children: <Widget>[
                      

                     SvgPicture.asset("assets/Iconos/plant.svg"),
                      
                      Text(planta.titulo,
                      style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                   
                        ),

                      ],
                      ),

                      SizedBox(height: 12,),

                      Text(descatha,
                      style: TextStyle(fontSize:15,color: Colors.black.withOpacity(0.7)),
                    
                      )

                    ]

                  ),
                  

                ),


              // Segundo Container Resultados
              //Taxonomia
              Container(
                  padding: EdgeInsets.only(top:12,left: 12,right: 12,bottom: 12),
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
                  transform: Matrix4.translationValues(0, -50, 0),
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
                      color: Colors.white,

                      
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[    


                      Row(
                      children: <Widget>[
                      SvgPicture.asset("assets/Iconos/clasificacion.svg"),
                      SizedBox(
                        width: 12,
                      ),
                      Text(taxCatharanthus.titulo,
                      style: TextStyle(fontSize:18,fontWeight:FontWeight.bold),
                        ),
                      ],
                      ),

                      SizedBox(
                        height: 12,
                      ),

                      Row(
                      children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Orden",
                      style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                      ),

                      Spacer(),

                      Text(taxCatharanthus.orden,
                      style: TextStyle(fontSize:15),
                   
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),

                      ],
                      ),

                      Divider(color: Colors.black45,),
                      SizedBox(
                        height: 5,
                      ),
                    

                      Row(
                      children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Familia",
                        style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                        ),
                      Spacer(),
                      Text(taxCatharanthus.familia,
                      style: TextStyle(fontSize:15),
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),
                      ],
                      ),


                      Divider(color: Colors.black45,),
                      SizedBox(
                        height: 5,
                      ),


                       Row(
                      children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Género",
                        style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                        ),
                      Spacer(),
                      Text(taxCatharanthus.genero,
                      style: TextStyle(fontSize:15),
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),
                      ],
                      ),

                      Divider(color: Colors.black45,),
                      SizedBox(
                        height: 5,
                      ),


                      Row(
                      children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Especie",
                        style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                        ),
                      Spacer(),
                      Text(taxCatharanthus.especie,
                      style: TextStyle(fontSize:15),
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),
                      ],
                      ),

                      Divider(color: Colors.black45),
                      SizedBox(
                        height: 5,
                      ),


                               Row(
                      children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Filo",
                        style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                        ),
                      Spacer(),
                      Text(taxCatharanthus.filo,
                      style: TextStyle(fontSize:15),
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),
                      ],
                      ),

                      Divider(color: Colors.black45,),
                      SizedBox(
                        height: 5,
                      ),


                  ]
                  ),
                ),


                //Tercer resultado
                //Cuidados de la planta 

                 Container(
                  padding: EdgeInsets.only(top:16,left: 16,right: 16,bottom: 16),
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
                  transform: Matrix4.translationValues(0, -60, 0),
                  height: 457,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
                  color: Colors.white,

                      
                      
                      
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[  

                      Row(

                      children: <Widget>[
                      SvgPicture.asset("assets/Iconos/farmer .svg"),
                      SizedBox(
                        width: 12,
                      ),
                      Text(catharanthus.titulo,
                      style: TextStyle(fontSize:18,fontWeight:FontWeight.bold),
                        ),
                      ],
                      ),

                      SizedBox(
                        height: 18,
                      ),

                      Row(
                        
                        children: <Widget>[
                      SvgPicture.asset("assets/Iconos/soil.svg"),
                      SizedBox(
                        width: 12,
                      ),
                      Text("Tipo de suelo",
                      style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,
                        ),
                      )
                      ],),

                      SizedBox(
                        height: 8,
                      ),

                      Text(catharanthus.suelo,
                      style: TextStyle(fontSize:15,color: Colors.black26.withOpacity(0.7)),
                        ),


                     Divider(color: Colors.black26,),
                     SizedBox(
                        height: 5,
                     ),


                     Row(
                        
                      children: <Widget>[
                      SvgPicture.asset("assets/Iconos/temperature .svg"),
                      SizedBox(
                        width: 12,
                      ),
                      Text("Temperatura",
                      style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                        ),
                      ],),

                        SizedBox(
                        height: 8,
                      ),

                      Text(catharanthus.temperatura,
                      style: TextStyle(fontSize:15,color: Colors.black26.withOpacity(0.7)),
                        ),


                     Divider(color: Colors.black26,),
                     SizedBox(
                        height: 5,
                     ),


                      Row(
                        
                      children: <Widget>[
                      SvgPicture.asset("assets/Iconos/calendar.svg"),
                      SizedBox(
                        width: 12,
                      ),
                      Text("Temporada",
                      style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                        ),
                      ],),

                        SizedBox(
                        height: 8,
                      ),

                     Text(catharanthus.temporada,
                      style: TextStyle(fontSize:15,color: Colors.black26.withOpacity(0.7)),
                        ),

                     Divider(color: Colors.black26,),

                     SizedBox(
                        height: 5,
                     ),


                        Row(
                        
                      children: <Widget>[
                      SvgPicture.asset("assets/Iconos/water.svg"),
                      SizedBox(
                        width: 12,
                      ),
                      Text("Agua",
                      style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                        ),
                      ],),

                        SizedBox(
                        height: 8,
                      ),

                        Text(catharanthus.agua,
                        style: TextStyle(fontSize:15,color: Colors.black26.withOpacity(0.7)),
                          ),
                    

                     Divider(color: Colors.black26,),
                     SizedBox(
                        height: 5,
                     ),

                  
                  ]
                  ),
                  

                ),


                   // Cuarto Container - Caracteristicas
              
              Container(
                  padding: EdgeInsets.only(top:12,left: 12,right: 12,bottom: 12),
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
                  transform: Matrix4.translationValues(0, -65, 0),
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
                      color: Colors.white,
    
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[    

                      Row(
                      children: <Widget>[
                      SvgPicture.asset("assets/Iconos/timeline.svg"),
                      SizedBox(
                        width: 12,
                      ),
                      Text(caracchatha.titulo,
                      style: TextStyle(fontSize:18,fontWeight:FontWeight.bold),
                        ),
                      ],
                      ),

                      SizedBox(
                        height: 12,
                      ),

                      Row(
                      children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Tipo de Planta:",
                      style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                      ),

                      Spacer(),

                      Text(caracchatha.tipo,
                      style: TextStyle(fontSize:15),
                   
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),

                      ],
                      ),

                      Divider(color: Colors.black45,),
                      SizedBox(
                        height: 5,
                      ),
                    

                      Row(
                      children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Floración:",
                        style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                        ),
                      Spacer(),
                      Text(caracchatha.floracion,
                      style: TextStyle(fontSize:15),
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),
                      ],
                      ),


                      Divider(color: Colors.black45,),
                      SizedBox(
                        height: 5,
                      ),


                       Row(
                      children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Altura:",
                        style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                        ),
                      Spacer(),
                      Text(caracchatha.altura,
                      style: TextStyle(fontSize:15),
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),
                      ],
                      ),

                      Divider(color: Colors.black45,),
                      SizedBox(
                        height: 5,
                      ),


                      Row(
                        
                        
                      children: <Widget>[
                        
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Propagación: ",
                        style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                        ),
                      Spacer(),
                      
                      
                      Text(caracchatha.propagacion,
                      style: TextStyle(fontSize:15),
                        ),
                        Padding(padding: EdgeInsets.only(right: 40)),
                        


                      ],
                      ),

                      Divider(color: Colors.black45),
                      SizedBox(
                        height: 5,
                      ),

                  ]
                  ),
                ),



                // Quinto container
                //usos 


                 Container(
                 
                  padding: EdgeInsets.only(top:12,left: 12,right: 12,bottom: 0),
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
               
                  transform: Matrix4.translationValues(0, -70, 0),
                  height: 287,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
                      color: Colors.white,

                      ),

                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[

                      Row(
                      children: <Widget>[
                      

                     SvgPicture.asset("assets/Iconos/use.svg"),
                      SizedBox(
                        width: 12,
                      ),
                      
                      Text("Usos",
                      style: TextStyle(fontSize:16,fontWeight:FontWeight.bold),
                   
                        ),

                      ]
                      ),

                      SizedBox(height: 12,),

                      Text("Medicinales:",
                      style: TextStyle(fontSize:15,color: Colors.black,fontWeight: FontWeight.bold),
                    
                      ),
                      Text(usocatha1,
                      style: TextStyle(fontSize:15,color: Colors.black.withOpacity(0.7)),
                    
                      ),
                         Text(usocatha2,
                      style: TextStyle(fontSize:15,color: Colors.black.withOpacity(0.7)),
                    
                      ),

                      SizedBox(height: 12,),

                      Text("Ornamentales:",
                      style: TextStyle(fontSize:15,color: Colors.black,fontWeight: FontWeight.bold),
                    
                      ),
                      Text(usocatha,
                      style: TextStyle(fontSize:15,color: Colors.black.withOpacity(0.7)),
                    
                      ),



             

                   ]
                  ),
                ),





                

                
        ]

          
        
        
        ,),
        

        ]
      )

      );
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

             decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
                      color: Colors.white,
                  

                      ),

      

  
     margin: EdgeInsets.only(left: espaciopadding,top: espaciopadding/2,bottom: espaciopadding*2.5),
   
    width:size.width*0.4,
     child:Column(children: <Widget>[
       Image.asset("assets/Fotos/cara.png"),
    
     ],)

    );
  }
}

class Scrollplantas1 extends StatelessWidget {
  const Scrollplantas1({
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
       Image.asset("assets/Fotos/cara1.png"),
    
     ],)

    );
  }
}


class Scrollplantas2 extends StatelessWidget {
  const Scrollplantas2({
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
       Image.asset("assets/Fotos/cara2.png"),
    
     ],)

    );
  }
}


class Scrollplantas3 extends StatelessWidget {
  const Scrollplantas3({
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
       Image.asset("assets/Fotos/cara3.png"),
    
     ],)

    );
  }
}