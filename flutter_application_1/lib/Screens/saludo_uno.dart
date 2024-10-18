import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaSaludo extends StatefulWidget {
  @override
  _PantallaSaludoState createState() => _PantallaSaludoState();
}

class _PantallaSaludoState extends State<PantallaSaludo> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text('Hola mundo'),
        backgroundColor: Colors.deepPurple,
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Número de repetiones',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              '$contador',
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              contador++;
              setState(() {});
            },
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              contador--;
              setState(() {});
            },
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            child: Icon(Icons.restart_alt),
            onPressed: () {
              contador = 0;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
