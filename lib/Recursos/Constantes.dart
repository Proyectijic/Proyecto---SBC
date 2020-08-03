import 'package:flutter/material.dart';

const color1 = Color(0xFF0C9869);
const colorfondo = Color(0xFFF9F8FD);
const colortexto = Color(0xFFF9F8FD);
const double espaciopadding = 20.00;

class Caracteristicas{
  final String titulo,tipo,floracion,altura,propagacion;
  Caracteristicas({
    this.titulo,
    this.tipo,
    this.floracion,
    this.altura,
    this.propagacion,
  });

    factory Caracteristicas.fromJson(Map<String, dynamic> json)

    {
      return Caracteristicas(
        titulo: json["titulo"],
        tipo: json["titulo"],
        floracion: json["titulo"],
        altura: json["titulo"],
        propagacion: json["titulo"],
      );

    }

   



}

 Caracteristicas nopal = Caracteristicas
    (

      titulo: "Características",
      tipo: "Arbusto, Árbol Suculento",
      floracion: "Perenne",
      altura: "No más de 2 metros",
      propagacion: "Ramificación y corte",
    );

   Caracteristicas caraccorona = Caracteristicas
    (

      titulo: "Características",
      tipo: "Arbusto",
      floracion: "Perenne",
      altura: "Puede alcanzar los 150 cm",
      propagacion: "Por esquejes terminales",
    );

       Caracteristicas caracagrial = Caracteristicas
    (

      titulo: "Características",
      tipo: "Arbusto",
      floracion: "Perenne",
      altura: "Entre 30 y 40 centímetros",
      propagacion: "Siembra, esquejes",
    );

    Caracteristicas caracacola = Caracteristicas
    (

      titulo: "Características",
      tipo: "Hierba",
      floracion: "Perenne, Anual",
      altura: "Entre 15 y 22 centímetros",
      propagacion: "Esquejes",
    );

    Caracteristicas caracchatha= Caracteristicas
    (

      titulo: "Características",
      tipo: "Arbusto",
      floracion: "Perenne",
      altura: "1 m",
      propagacion: "esquejes y semillas.",
    );

       Caracteristicas caracaucuba= Caracteristicas
    (

      titulo: "Características",
      tipo: "Arbusto",
      floracion: "Perenne",
      altura: "1 a 3 m de altura.",
      propagacion: "esquejes y acodos.",
    );




class Condiciones{
    final String titulo,suelo,temperatura,temporada,agua;
    Condiciones({
    this.titulo,
    this.suelo,
    this.temperatura,
    this.temporada,
    this.agua,

    });

   factory Condiciones.fromJson(Map<String, dynamic> json)

{
  return Condiciones(
    titulo: json["titulo"],
    suelo: json["titulo"],
    temperatura: json["titulo"],
    temporada: json["titulo"],
    agua: json["titulo"],
  );


}

}

Condiciones cactus = Condiciones
(
  titulo: "Condiciones Necesarias",
  suelo: "Suelos neutros o ligeramente alcalinos.",
  temperatura:"El nopal para su óptimo desarrollo requiere una temperatura anual entre los 18 y 25ºC, soportando una temperatura máxima de 35ºC.",
  temporada: "Presenta escasez en la temporada de invierno lo cual es indicativo del posible daño por frío. Su época de siembra es en primavera, verano y otoño, su floración de junio a octubre. ",
  agua: "Resistente a la sequía.",

);

Condiciones corona = Condiciones
(
  titulo: "Condiciones Necesarias",
  suelo: "Los suelos sueltos y bien drenados.",
  temperatura: "Debe crecer en climas preferiblemente cálidos con inviernos débiles. Las temperaturas deben mantenerse estables en un rango de 20-35°C y nunca bajar de los 5°C. Las heladas son mortales.",
  temporada: "Florece todo el año y su época de plantación es en primavera y otoño. ",
  agua: "Moderada humedad, regar una vez cada 2 días.",

);

Condiciones agrial = Condiciones
(
  titulo: "Condiciones Necesarias",
  suelo: "Suelo arcilloso.",
  temperatura:"Su temperatura ideal es de 18 a 20 ºC incluso por la noche. No resiste temperaturas inferiores a los 10 ºC ni el calor excesivo.",
  temporada: "Florece todo el año y su época de plantación es en primavera, verano y otoño.",
  agua: "Es una planta propensa al pudrimiento de raíces si te excedes con el agua. Lo mejor es regarla una vez a la semana y un poco más frecuentemente en los meses de verano.",

);

Condiciones coladepollo = Condiciones
(
  titulo: "Condiciones Necesarias",
  suelo: "Arena, suelo arcilloso: ácido, neutro, alcalino. ",
  temperatura:"Es resistente a la sequía, no es recomendable para lugares con heladas o temperaturas inferiores a los -3 ºC.",
  temporada: "Florece todo el año y su época de plantación es en primavera, verano y otoño.",
  agua: "Mantener húmedo pero, sin acumulación de agua.",

);

Condiciones aucuba = Condiciones
(
  titulo: "Condiciones Necesarias",
  suelo: "Suelo bien drenado.",
  temperatura:"Se la aprecia por su resistencia en condiciones secas y en deficiencia de nutrientes, popular en los jardines de zonas subtropicales donde las temperaturas nunca bajan de 5 °C a 7 °C, y como planta de arriate en jardines de clima templado durante la estación más cálida.",
  temporada: "Tienen un período de floración prolongado, todo el año en condiciones tropicales, desde la primavera a finales de otoño en climas templados.",
  agua: "Mantener húmedo, pero sin acumulación de agua.",

);

Condiciones catharanthus  = Condiciones
(
  titulo: "Condiciones Necesarias",
  suelo: "El suelo ideal es húmedo con un alto contenido orgánico.",
  temperatura:"La temperatura ideal para cultivar esta planta ornamental es entre 10°C y 32°C, con una humedad relativa alta.",
  temporada: "Florece todo el año y su época de plantación es en primavera.",
  agua: "Mantener húmedo, pero sin acumulación de agua.",

);

















class Taxonomia{
  final String titulo,orden,familia,genero,especie,filo;
  Taxonomia({
  this.titulo,
   this.orden,
   this.familia,
   this.genero,
   this.especie,
   this.filo,
  });

      factory Taxonomia.fromJson(Map<String, dynamic> json)
    {
      return Taxonomia(
        titulo: json["titulo"],
        orden: json["orden"],
        familia: json["familia"],
        genero: json["genero"],
        especie: json["especie"],
        filo: json["filo"],

      );


    }

}

    Taxonomia taxnopal = Taxonomia (
      titulo: "Clasificación Taxonómica",
      orden: "Caryophyllales",
      familia: "Cactaceae",
      genero: "Opuntia",
      especie: "Opuntia ficus-indica",
      filo: "Magnoliophyta",

    );


    Taxonomia taxcorona = Taxonomia (
      titulo: "Clasificación Taxonómica",
      orden: "Malpighiales",
      familia: "Euphorbiaceae",
      genero: "Euphorbia",
      especie: "Euphorbia milii",
      filo: "Magnoliophyta",
    );

      Taxonomia taxagrial = Taxonomia (
      titulo: "Clasificación Taxonómica",
      orden: "Cucurbitales-Calabazas",
      familia: "Begoniaceae-Begonias",
      genero: "Begonia-Begonias ",
      especie: "Begonia Cucullata",
      filo: "Tracheophyta",
    );

      Taxonomia taxacolapollo = Taxonomia (
      titulo: "Clasificación Taxonómica",
      orden: "Commelinales",
      familia: "Commelinaceae-Comelináceas",
      genero: "Tradescantia ",
      especie: "Tradescantia zebrina",
      filo: "Tracheophyta",
    );

       Taxonomia taxaucuba = Taxonomia (
      titulo: "Clasificación Taxonómica",
      orden: "Garryales",
      familia: "Garryaceae",
      genero: "Aucuba ",
      especie: "Aucuba japónica 'Crotonifolia'",
      filo: "Tracheophyta",
    );
      Taxonomia taxCatharanthus  = Taxonomia (
      titulo: "Clasificación Taxonómica",
      orden: "Gentianales",
      familia: "Apocynaceae",
      genero: "Catharanthus ",
      especie: "Catharanthus roseus",
      filo: "Tracheophyta",
    );





class Planta {
    final String titulo,subtitulo,id,descripcion;

    Planta({
      this.titulo,
      this.subtitulo,
      this.id,
      this.descripcion,

    });

    factory Planta.fromJson(Map<String, dynamic> json)
    {
      return Planta(
        id: json["id"],
        titulo: json["title"],
        subtitulo: json["subtitulo"],

      );


    }
}

Planta planta = Planta(
  id: "1",
  titulo: "Descripción",
  subtitulo: "",
  descripcion: description

);

Planta planta1 = Planta(
  id: "3",
  titulo: "Descripción",
  subtitulo: "",
  descripcion: descorona
);

Planta planta2 = Planta(
  id: "3",
  titulo: "Descripción",
  subtitulo: "",
  descripcion: desagrial
);


Planta planta3 = Planta(
  id: "4",
  titulo: "Descripción",
  subtitulo: "",
  descripcion: descolapollo
);


String description =
    "Es una especie perene y suculenta, es decir, no pierde hojas en una estación del año y guarda una gran cantidad de agua en sus tallos. Su estructura consta de varios tallos y ramas formados por unos segmentos planos llamados cladodios o pencas, que pueden ramificarse. Alcanza una altura de entre 3 y 5 metros. Carece de hojas a lo largo de las pencas. Estas son color verde, ovalados y su superficie cerosa posee espinas rodeadas de una pelusa; estos grupos de espinas son los gloquidios. Las flores crecen solitarias a lo largo de los bordes o en las uniones de las pencas, con varios pétalos que pueden ser amarillos, rojos o blancos. Después de la floración se desarrollan frutos en forma de pera invertida, de colores que van desde el verde claro hasta el rojizo e incluso púrpura. Su piel es ligeramente dura y está cubierta de gloquidios.";

String descorona =
    "Arbusto con flores y espinas. Hojas de forma oblongo-espatulada, verdes en ambas caras y provistas de una espina en su base de implantación al tallo. Su resistencia y belleza de las flores, son los dos aspectos fundamentales de su popularidad. Esta especie en climas propicios, es capaz de mantenerse florecida durante todo el año e incluso ramificarse bastante.";

String desagrial = 
     "También conocida como la flor de nácar,  procede de zonas tropicales de Sudamérica y en especial de México, esta planta puede alcanzar el porte de un arbusto y superar los dos metros de altura.Sus hojas crecen en forma de cascada. Tiene un haz con hojas verdes con manchas plateadas y un envés con un rojo escarlata espectacular. Florece en verano, las flores aparecen en racimos y pueden ser de diferentes colores, rosa, rojo y blanco.";

String descolapollo = 
     "Cola de pollo también conocido como: Matalí, Cucaracha, Panameña.La cola de pollo (tradescantia zebrina) es una herbácea perenne de hoja perenne con un característico patrón de piel de ceba en las hojas. La cola de pollo crece poco de alto y forma densas colonias que tienden a expandirse con fuerza, por lo que se la suele emplear como rastrera. Sus hojas se alternan con púrpura, verde y plata. Son brillantes y únicos. Tiene una altura de 15-22 cm y el diámetro de la flor es de 6 mm.";

String descatha =
"Las chavelitas o vincas son plantas herbáceas con látex acuoso. Hojas opuestas, oblongo-elípticas a obovado-elípticas, de 2 a 7 cm de largo y de 1 a 4 cm de ancho. Inflorescencia sésil que se ubica en las axilas de las hojas superiores. Flores bisexuales, color púrpura o blanco, con cinco sépalos casi lineares, de 2 a 3 mm de largo; corola en forma de trompeta, de tubo largo (hasta 3 cm) y angosto que remata en cinco lóbulos ampliamente obovados, de 1 a 2 cm de largo; cinco estambres, insertos sobre el tubo de la corola y alternando con sus lóbulos, de lamentos cortos y anteras largas, presenta un sólo estilo con el estigma ancho y grueso. Floración, en siembras programadas, todo el año. Esta especie se encuentra cultivada ampliamente y está presente en amplias áreas subtropicales y tropicales del mundo. La planta teresita no es venenosa, pero se debe tener cuidado con el látex y no tocarse la cara cuando se manipula la planta.";

String desaucuba =
"La aucuba japonesa es un arbusto de hoja perenne que crece de 6 a 10 pies (2-3 m) de altura con hojas coloridas, verdes y de oro amarillo de hasta 20 cm (8 pulgadas) de largo. Las flores no son particularmente ornamentales, pero las bayas rojas brillantes y atractivas las reemplazan en el otoño si una planta masculina crece cerca. Las flores y las frutas a menudo se esconden detrás del follaje. Aucuba también hace buenos arbustos de contenedor o plantas de interior.";




String usonopal1="Muchas personas consumen la tuna por su agradable sabor, sin conocer los beneficios que puede proporcionar a su salud. La fruta, en todas sus variedades (blanca, roja y anaranjada) tiene propiedades nutricionales: contiene vitaminas, tales como tiamina, niacina y riboflavina, además de minerales esenciales.";
String usonopal2="De la planta se consumen como verdura  y el fruto como tal .En Marruecos y la zona mediterránea donde se cultivan son muy apreciados y se aprovechan tanto el fruto como el cactus en sí, este último para forraje.";
String usonopal3="Además del consumo como alimento, se utiliza en la industria de cosméticos.(maquillaje, tintes, etc).También se incluye como parte del adobe, impermeabilizándolo.Como espesante y adherente casero de la pintura al agua (por ejemplo:Cal).";

String usocorona1="Se utiliza como planta ornamental de jardín por su vistoso porte y floración. Esta planta requiere pocos cuidados.";

String usocola1="Entre las propiedades medicinales de esta planta medicinal se destacan que es: depurativa de la sangre, y para toda clase de impurezas, descongestionante, diurética, antiinflamatoria, contra malestares hepáticos, problemas renales, diarreas en niños y problemas de dentición en niños. ";

String usoagrial="Utilizada en medicina popular como diurético, purgante, antiescorbútico y antisifilítico.";

String usoaucuba="Muy utilizada en jardines públicos y autopistas por su resistencia a los gases de los vehículos.";

String usocatha="Esta especie se cultiva principalmente como planta ornamental para la cobertura del hogar.";
String usocatha1="Las sustancias vinblastina y vincristina extraídas de la planta se usan en el tratamiento de la leucemia.";
String usocatha2="La planta se ha usado tradicionalmente para tratar la diabetes y la hipertensión, pero los efectos adversos y su elevada toxicidad no la hacen aconsejable para uso interno.";
String usocatha3="Por su contenido en ibogaína puede ser alucinógeno";