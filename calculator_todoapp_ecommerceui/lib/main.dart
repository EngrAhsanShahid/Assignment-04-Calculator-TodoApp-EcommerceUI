import 'package:flutter/material.dart';

import 'calculator.dart';
import 'ecomui.dart';
import 'todoapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Assignment#04")),
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 60),
                Calculatorfunc(),
                SizedBox(height: 40),
                TodoAPPFunc(),
                SizedBox(height: 40),
                EcommerceUIFunc(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Calculatorfunc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Calculator(),
            ),
          );
        },
        child: Text('Calculator'),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(100, 60),
        ),
      ),
    );
  }
}

class TodoAPPFunc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TodoAPP(),
            ),
          );
        },
        child: Text('Todo-App'),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(100, 60),
        ),
      ),
    );
  }
}

class EcommerceUIFunc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EcommerceUI(),
            ),
          );
        },
        child: Text('Ecommerce UI'),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(100, 60),
        ),
      ),
    );
  }
}
