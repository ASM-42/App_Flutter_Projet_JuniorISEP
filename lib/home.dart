import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(Home());
}
// violet = #6B62A3
// orange = #DA6436
// jaune =
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
        theme: ThemeData(
            primaryColor: const Color(0xFF6B62A3)
        ),
      home: //Scaffold(
        Builder(
        builder: (context) => Scaffold(
        body: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(vertical : 100.0),
              child: (Image.asset('asset/JE_complet.png', fit: BoxFit.cover,)
              )
            ),
            Padding(padding: EdgeInsets.all(16.0),
              child: Text(
                  'Projet Recrutement n°3',
                  style: TextStyle (
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: (70.0)),
              child: (ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow[900]),
                onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => Home2()),
                     );
                   },
                child: Text('Découvrir',
                  style: TextStyle (
                      fontSize: 25),
              ),
              )
              ),
              ),
            Padding(padding: EdgeInsets.only(top: 150.0),
              child: Text(
                  'Powered by ASM',
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color : Colors.deepPurple[600],),
                      ),
            ),
        ],
    )
    )
    )
    );
  }
}


class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        theme: ThemeData(
          primaryColor: const Color(0xFF6B62A3)
        ),
        home: Scaffold(
            body:
            Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 95.0, bottom: 50.0),
                  child: Text(
                    'Consignes du projet :',
                    style: TextStyle (
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[600]),
                  ),
                ),
                Padding(padding: EdgeInsets.all(50.0),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: 'Comparer la nouvelle version de Flutter aux autres outils permettant de créer des applications mobiles cross-platform, disponibles sur le marché. Flutter serait-elle une solution plus adaptée que React Native ppour le travail de Junior ISEP?',
                      style: TextStyle(
                        fontSize : 20,
                        color: Colors.black,
                      ),
                    ),
                  )
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: (70.0)),
                  child: (ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow[900]),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Go Back',
                      style: TextStyle (
                          fontSize: 25),
                    ),
                  )
                  ),
                ),
              ],
            )
        )
    );
  }
}