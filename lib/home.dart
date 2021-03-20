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
                      message: "Context",
                      child: (TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.deepPurple[600],
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("1. Qu'est-ce qu'un outil cross-plateforme",
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
                      message: "Context",
                      child: (TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.deepPurple[600],
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("2. Flutter",
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
                      message: "Context",
                      child: (TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.deepPurple[600],
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("3. React Native",
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
                      message: "Context",
                      child: (TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.deepPurple[600],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Contexte()),
                          );
                        },
                        child: Text("4. Etude Comparative",
                          style: TextStyle (
                              decoration: TextDecoration.underline,
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



class Contexte extends StatelessWidget {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold, decorationColor: Color.fromARGB(255, 245, 127, 23),);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 1: Context',
      style: optionStyle,
    ),
    Text(
      'Index 2: Flutter',
      style: optionStyle,
    ),
    Text(
      'Index 3: React Native',
      style: optionStyle,
    ),
    Text(
      'Index 4: Comparaison',
      style: optionStyle,
    ),
  ];

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
            'Application cross-plateformes',
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
              ],
        ),

        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.ad_units_outlined),
            label: 'Context',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('asset/flutter.png'),
            ),
            label: 'Flutter',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('asset/react_native.png'),
            ),
            label: 'React',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Comparaison',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple[600],
      ),
      ));
  }
}