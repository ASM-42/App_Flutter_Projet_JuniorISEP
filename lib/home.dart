import 'package:flutter/cupertino.dart';
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
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              child: (Image.asset('asset/JE_complet.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*50,)
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/10,
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/7,
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
                  width: MediaQuery.of(context).size.width/1.1,
                  height: MediaQuery.of(context).size.height/2,
                  child: Container(
                    margin: const EdgeInsets.all(2.0),
                    decoration: myBoxDecoration(),
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: 'Comparer la nouvelle version de Flutter aux autres outils permettant de créer des applications mobiles cross-platform, disponibles sur le marché. Flutter serait-elle une solution plus adaptée que React Native ppour le travail de Junior ISEP?',
                          style: TextStyle(
                            fontSize : 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/10,
                  child: Center(
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
                ),
              ],
            )
        )
    );
  }
}