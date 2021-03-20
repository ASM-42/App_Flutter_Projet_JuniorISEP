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
      title: 'Flutter layout demo',
      home: Scaffold(
        body:
        Column(
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
    );
  }
}


class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
            body:
            Column(
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
                      // Respond to button press
                    },
                    child: Text('Go Back',
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
    );
  }
}