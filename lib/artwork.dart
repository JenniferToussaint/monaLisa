import 'package:flutter/material.dart';

// voir ici: https://api.flutter.dev/flutter/material/Scaffold-class.html
class ArtworkWidget extends StatelessWidget{
  const ArtworkWidget({super.key});
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaffoldExample(),
    );
  }
}

// classe "intermédiaire" pour le stateful comme en React
class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({super.key});

  @override
  State<ScaffoldExample> createState() => _ScaffoldExampleState();
}

// le vrai Scaffold
class _ScaffoldExampleState extends State<ScaffoldExample> {
  // int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
       body: Center(
        
        child: Column(  // widget de type collumn
          mainAxisAlignment: MainAxisAlignment.center, // center horizontalement
         children: <Widget>[
          Stack( // pour empiler les widget
            alignment: Alignment.center, // supperpose img au centre
            children: [ // prends une liste de widget comme enfant
            Image.asset("images/Mona_Lisa.jpg"),  // mettre l'image ici

            const Icon(
              Icons.favorite,
              size: 100,
              color: Color.fromARGB(75, 255, 253, 253),
              
            ),
            ],
          ),
            const Text(
              'Mona Lisa',
              style: TextStyle(
                  fontFamily: 'Roboto',
                fontSize: 30.0,
                color: Colors.brown,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => setState(() => _count++),
      //   tooltip: 'Increment Counter',
      //   child: const Icon(Icons.add),
      // ),
              ),  

            ), const Text("Léonard de Vinci",
            style: TextStyle(
               fontFamily: 'Roboto',
               fontSize: 15,
               fontWeight: FontWeight.bold,
               color: Colors.brown,

            ),
            ),
              Row( // nouvelle ligne
            mainAxisAlignment: MainAxisAlignment.center, // alignement
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.article),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
}






