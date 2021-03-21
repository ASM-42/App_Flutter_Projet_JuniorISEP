import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(Home());
}



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MediaQueryData queryData = MediaQuery.of(context);
    return MaterialApp(
      title: 'Home',
        theme: ThemeData(
            primaryColor: const Color(0xFF6B62A3)
        ),
      home: //Scaffold(
        Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              child: (Image.asset('asset/JE_complet.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*50,)
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/5,
              child: Text(
                  'Projet Recrutement n°3',
                  style: TextStyle (
                      fontSize: 25,
                      fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.center,
                    ),
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/10,
              child: (ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow[900],),
                onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => Consignes()),
                     );
                   },
                child: Text('Découvrir',
                  style: TextStyle (
                      fontSize: 25),
              ),
              )
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/5,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                    'Powered by Flutter',
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color : Colors.deepPurple[600],),
                        textAlign: TextAlign.center,),

              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/10,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset('asset/flutter.png', scale: 24,),
              ),
            )
        ],
    )
    )
    )
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      width: 2,
      color: Colors.deepPurple[600],
    ),
  borderRadius: BorderRadius.all(
    Radius.circular(5.0),
  )
  );
}
class Consignes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Consignes',
        theme: ThemeData(
          primaryColor: const Color(0xFF6B62A3)
        ),
        home: Scaffold(
            backgroundColor: Colors.white,
            body:
            Column(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/5,
                  child: Center(
                    child: Text(
                      'Consignes du projet :',
                      style: TextStyle (
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple[600]),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.05,
                  height: MediaQuery.of(context).size.height/2.8,
                  child: Container(
                    //margin: const EdgeInsets.symmetric(vertical: 0.5, horizontal: 0.002,),
                    decoration: myBoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text: 'Comparer la nouvelle version de Flutter aux autres outils permettant de créer des applications mobiles cross-platform, disponibles sur le marché. ',
                            style: TextStyle(
                              fontSize : 20,
                              color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: '\nFlutter serait-elle une solution plus adaptée que React Native pour le travail de Junior ISEP?'),
                                TextSpan(text: '')
                          ]
                          ),
                    ),
                      ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/7,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/10,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height/10,
                      child: (ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.yellow[900]),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Menu()),
                          );
                        },
                        child: Text("C'est parti !",
                          style: TextStyle (
                              fontSize: 25),
                        ),
                      )
                      ),
                    ),
                  ),
                ),
              ],
            )
        )
    );
  }
}




class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Menu',
        theme: ThemeData(
            primaryColor: const Color(0xFF6B62A3)
        ),
        home: Scaffold(
            backgroundColor: Colors.white,
            body:
            Column(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                    child: Center(
                      child: Text(
                        'Menu :',
                        style: TextStyle (
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple[600]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/7,
                    child: Tooltip(
                      message: "Première Partie",
                      child: (TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.deepPurple[600],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Comp()),
                          );
                        },
                        child: Text("1. Qu'est-ce qu'un outil cross-plateform",
                          style: TextStyle (
                              decoration: TextDecoration.underline,
                              fontSize: 20),
                        ),
                      )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/7,
                    child: Tooltip(
                      message: "Seconde partie",
                      child: (TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.deepPurple[600],
                        ),
                        child: Text("2. Flutter",
                          style: TextStyle (
                              fontSize: 20),
                        ),
                      )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/7,
                    child: Tooltip(
                      message: "Troisième Partie",
                      child: (TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.deepPurple[600],
                        ),
                        child: Text("3. React Native",
                          style: TextStyle (
                              fontSize: 20),
                        ),
                      )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/7,
                    child: Tooltip(
                      message: "Quatrième Partie",
                      child: (TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.deepPurple[600],
                        ),
                        child: Text("4. Etude Comparative",
                          style: TextStyle (
                              fontSize: 20),
                        ),
                      )
                      ),
                    ),
                  ),
                  FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    icon: Icon(Icons.home),
                    label: Text("Home"),
                    backgroundColor: Colors.yellow[900],
                  ),
                ]
            ),
        )
    );
  }
}




class Comp extends StatelessWidget {
  const Comp({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold, decorationColor: Color.fromRGBO(23, 43, 432, 45678));
  static List<Widget> _widgetOptions = <Widget>[
  SingleChildScrollView(
    child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
                      SizedBox(
                                //width: media.size.width, height: media.size.height/5,
                        child: Center(
                          child: Text('Application cross-plateform',
                            style: TextStyle (
                                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.deepPurple[600])
                          ),
                        ),
                      ),
              SizedBox(
                height: 30,
              ),
                      new SingleChildScrollView(
                        child: SizedBox(
                          child: Container(
                            decoration: myBoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                      text: "Le développement « cross platform » permet de concevoir deux sortes d’applications mobiles: "
                                          "\n - les applications natives (language du Système d'exploitation) \n - et les hybrides (issues du Web). ",
                                      style: TextStyle(
                                        fontSize : 20,
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(text: "\n \n Comment choisir entre Natif et Hybride? \n \n ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                        TextSpan(text: '\n *Natives \n',
                                            style: TextStyle(
                                              decoration: TextDecoration.underline,
                                            )),
                                        TextSpan(text: "Toutes les applications mobiles natives sont téléchargeables depuis les stores. "
                                            "Elles sont conçues pour permettre de profiter du potentiel de votre smartphone, "
                                            "car elles sont développées spécifiquement pour sa plateforme avec son langage qui lui est propre. "
                                            "Ce qui implique une meilleur réactivitée et une utilisation régulière."
                                            "De plus, étant faite 'sur mesure' pour le smartphone, elle peux bénificié parfois du fonctionnent sans connexion internet,"
                                            " contrairement aux hybides. "
                                            "Mais cela implique aussi qu'un seul détail, tel que la taille de l'écran, suffise pour qu'elle ne soit plus optimale."
                                            "Une application native doit être à nouveau développer si l'on souhaite l'utiliser sous un autre système d'exploitation. "
                                            ),
                                        TextSpan(text: '\n\n *Hybrides \n',
                                            style: TextStyle(
                                              decoration: TextDecoration.underline,
                                            )),
                                        TextSpan(text: "Les languages Web (HTML, CSS, JavaScrpit) sont très répandus, ce qui est un grand avantage pour les applications Hybrides."
                                            "Ces applications sont codéés en languages Web, et sont donc à peu près universelles."
                                            "Elles s'adaptent (pour la plupart) à toutes les résolutions d'écrans, elles sont donc très populaires."
                                            "Mais contrairement aux applications natives, elles ne seront pas optimales pour le mobile utilisé."),
                                        TextSpan(text: '\n \n Le meilleur des deux mondes \n\n',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )),
                                        TextSpan(text: "Les applications natives, comme hybrides ont leurs qualitées et leurs défauts, "
                                            "et c'est à ce moment que le developpement 'cross-plateform' fait sont entrée."
                                            "C'est une autre façon de programmer une application aussi bien native qu'hybride."
                                            "En effet sur un bon nombre de framework multiplateforme vous pouvez aussi bien coder en C# que en HTML."
                                            "Vous pouvez développer votre application aussi bien pour un store que pour internet."
                                            "Un autre avantage, et pas des moindres, c'est que vous avez la possibilité de créer une application capable "
                                            "de s'adapter à differentes tailles d'écran, tout en gardant une optimisation certaines pour des smartphones précis. ")
                                      ]
                                  ),),
                              ),
                            ),
                          ),
                        ),
                      ),
            ],
    ),
  ),
    SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          SizedBox(
            //width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/5,
            child: Center(
              child: Text('Flutter',
                  style: TextStyle (
                      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.deepPurple[600])
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox( //width: MediaQuery.of(context).size.width/1.05, height: MediaQuery.of(context).size.height/2.8,
            child: Container(
              decoration: myBoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        text: "Flutter est un framewrok de développement d'applications multiplateformes conçu par Google. "
                            "Cette plateforme es diponible en open source, et ce depuis sa première version en 2018 et met à disposition une grande variété de "
                            "bibliothèques d’éléments d’IU standard pour Android et iOS. "
                            "Flutter reste cependant aussi adapté au développement d’applications web de bureau classiques. "
                            "Flutter utilise le language Dart, qui à l'aide de notions telles que Media Query ou Aspect Ratio, "
                            "va récuperer les caractéristiques de l'objet utilisé afin d'y adapter l'application.",
                        style: TextStyle(
                          fontSize : 20,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Son fonctionnement sous forme de Widget rends sont utilisation des plus intuitive.'
                              'Par exemple, tout ce que vous voyez sur cette page, le texte, la barre de navication, le titre, le bouton "Home"... '
                              "Ce sont tout des Widgets. Ce qui m'a permis de créer une application simple en un weekend, sans grandes connaissances en C."),
                          TextSpan(text: '')
                        ]
                    ),),),),),),],),
    ),
    SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          SizedBox(
            //width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/5,
            child: Center(
              child: Text('React Native',
                  style: TextStyle (
                      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.deepPurple[600])
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox( //width: MediaQuery.of(context).size.width/1.05, height: MediaQuery.of(context).size.height/2.8,
            child: Container(
              decoration: myBoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        text: 'React Native est aussi un framework multiplateformes disponible en open source, mais lui est créer par Facebook.'
                            'Il se base sur React, et donc sur des libraires en JavaScript. '
                            "Il s'exécute dans un processus en arrière-plan directement sur le terminal et communique avec la plate-forme native via une passerelle. "
                            "Les applications React Native sont écrites à l'aide d'un mélange de balisage JavaScript et XML, connu sous le nom de JSX."
                            "Ce qui s'approche des Widgets de Flutter mais reste plus compliquer à reverse 'engineering'",
                        style: TextStyle(
                          fontSize : 20,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: ''),
                          TextSpan(text: '')
                        ]
                    ),),),),),),],),
    ),
    Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        SizedBox(
          //width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/5,
          child: Center(
            child: Text('Comparaison',
                style: TextStyle (
                    fontSize: 25, fontWeight: FontWeight.bold, color: Colors.deepPurple[600])
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 30,
          child: Text(
            "Un tableau dans une application, c'est déjà plus créatif non?"
          ),
        ),
        SizedBox( //width: MediaQuery.of(context).size.width/1.05, height: MediaQuery.of(context).size.height/2.8,
          child: Container(
            decoration: myBoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Table(
                                border: TableBorder.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 2),
                                children: [
                                  TableRow( children: [
                                    Column(children:[Text(' ')]),
                                    Column(children:[Text('Flutter', style: TextStyle(fontSize: 20.0))]),
                                    Column(children:[Text('React Native', style: TextStyle(fontSize: 20.0))]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text("Qu'est-ce que c'est?")]),
                                    Column(children:[Text("Une boîte à outils d'interface utilisateur portable pour créer des applications compilées en natif sur mobile, Web et bureau à partir d'une seule base de code")]),
                                    Column(children:[Text("Un framework pour créer des applications natives à l'aide de React")]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text("Créé par")]),
                                    Column(children:[Text("Google")]),
                                    Column(children:[Text("Facebook")]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text("Langage de programmation")]),
                                    Column(children:[Text("Dart")]),
                                    Column(children:[Text("JavaScript")]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text("Chargement à Chaud")]),
                                    Column(children:[Text("Oui")]),
                                    Column(children:[Text("Oui")]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text("UI")]),
                                    Column(children:[Text("Les applications Flutter sont aussi bonnes sur les systèmes d'exploitation à jour que sur les anciennes versions."
                                        "Comme elles n'ont qu'une seule base de code, les applications se présentent et se comportent de la même manière sur iOS et Android - mais grâce aux widgets Material Design et Cupertino, elles peuvent également imiter la conception de la plate-forme elle-même. Comment est-ce possible?"
                                        "Flutter contient deux ensembles de widgets conformes à des langages de conception spécifiques: les widgets Material Design implémentent le langage de conception de Google du même nom; Les widgets Cupertino imitent le design iOS d'Apple."
                                        " Cela signifie que votre application Flutter aura une apparence et un comportement naturels sur chaque plate-forme, imitant leurs composants natifs.")]),
                                    Column(children:[Text("Les composants d'application ressemblent à ceux natifs (par exemple, un bouton sur un appareil iOS ressemble à un bouton iOS natif, et la même chose sur Android ). "
                                      "Le fait que React Native utilise des composants natifs sous le capot devrait vous donner l'assurance qu'après toute mise à jour de l'interface utilisateur du système d'exploitation, les composants de votre application seront également mis à niveau instantanément."
                                           "Cela dit, cela peut casser l'interface utilisateur de l'application, mais cela se produit très rarement."
                                        "  Si vous voulez que votre application soit presque identique sur toutes les plates - formes - ainsi que sur les anciennes versions d'un système d'exploitation (comme Flutter le fait) - envisagez d'utiliser des bibliothèques tierces ( comme celle-ci ). Ils vous permettront d'utiliser des composants Material Design, à la place des composants natifs."
                                    )]),
                                  ]),
                                  TableRow( children: [
                                    Column(children:[Text("Avantage compétitif")]),
                                    Column(children:[Center(
                                      child: Text("Superbe apparence et convivialité grâce à de riches widgets;\n\n"
                                          " Communauté et popularité en croissance rapide;\n"
                                          "Excellente documentation avec le soutien solide de l'équipe Flutter (ce qui facilite le démarrage du développement avec Flutter);\n\n"
                                          "Amélioration de Flutter pour le Web, offrant le potentiel d'une base de code unique sur les plates-formes mobiles et Web\n\n"
                                          "Difficile à battre le délai de mise sur le marché"),
                                    )]),
                                    Column(children:[Text("Stabilité (5+ ans sur le marché);\n\n"
                                        "De nombreux acteurs du marché éminents et prospères utilisent React Native;\n\n"
                                        "Communauté mature et vaste;\n\n"
                                        "Technologie facile à apprendre;\n\n"
                                        "De nombreux didacticiels et bibliothèques, qui permettent un développement rapide et facile;\n\n"
                                        "Le code peut être facilement réutilisé pour le développement d'applications Web et d'applications de bureau.")]),
                                  ]),


                                ],
                              ),
                            ),
                          ]))

                  ),
  ),
  ),
  ]),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(Icons.label);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/7,
                child: (TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.deepPurple[600],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),);},
                  child: Text("Home",
                    style: TextStyle (
                        decoration: TextDecoration.underline, fontSize: 20),),)),),
            SizedBox(
              child: Center(
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
            ),
            //Row(
              //children: [
                //SizedBox(
                  //child: (TextButton(
                    //style: TextButton.styleFrom(
                      //primary: Colors.deepPurple[600],),
                    //onPressed: () {_widgetOptions.elementAt(_selectedIndex+1);},
                    //child: Text("Précédent",
                      //style: TextStyle (decoration: TextDecoration.underline, fontSize: 20),
                    //),)),),
                //SizedBox(
                  //child: (TextButton(
                    //style: TextButton.styleFrom(
                      //primary: Colors.deepPurple[600],),
                    //onPressed: () {
                      //Navigator.push(
                        //context,
                        //MaterialPageRoute(builder: (context) => Comp()),);},
                    //child: Text("Suivant",
                      //style: TextStyle (decoration: TextDecoration.underline, fontSize: 20),
                    //),)),),
              //],
            //)
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor:  Color.fromARGB(255, 245, 127, 23),
            icon: Icon(Icons.ad_units_outlined,),
            label: 'Context',
          ),
          BottomNavigationBarItem(
            backgroundColor:  Color.fromARGB(255, 245, 127, 23),
            icon: Icon(Icons.looks_one_outlined,
            ),
            label: 'Flutter',
          ),
          BottomNavigationBarItem(
            backgroundColor:  Color.fromARGB(255, 245, 127, 23),
            icon: Icon(Icons.looks_two_outlined,
            ),
            label: 'React',
          ),
          BottomNavigationBarItem(
            backgroundColor:  Color.fromARGB(255, 245, 127, 23),
            icon: Icon(Icons.analytics_outlined,),
            label: 'Comparaison',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple[600],
        onTap: _onItemTapped,
      ),
    );
  }
}
