import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text("Global Solution",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            const Text("Guilherme Muniz Viana RM:92954"),
            const Text("Alexandre Ilha de Vilhena RM:88689"),
            const Text("Nikolas de Oliveira Paspaltzis RM:92865"),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/play'),
              child: const Text('Jogar'),
            ),
            const Image(image: AssetImage('assets/oceans20.png')),
          ],
        ),
      ),
    );
  }
}
