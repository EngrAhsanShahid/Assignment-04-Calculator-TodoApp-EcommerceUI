import 'dart:html';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = "";

  Widget btn(var textt) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            result = result + textt;
          });
        },
        child: Text(textt));
  }

  clearr() {
    setState(() {
      result = "";
    });
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Assignment #04"),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Column(
                children: [
                  Text(
                    result,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black,
                        color: Colors.white),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      btn('1'),
                      btn('2'),
                      btn('3'),
                      btn('/'),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      btn('4'),
                      btn('5'),
                      btn('6'),
                      btn('*'),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      btn('7'),
                      btn('8'),
                      btn('9'),
                      btn('-'),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      btn('.'),
                      btn('0'),
                      btn('+'),
                      ElevatedButton(onPressed: output, child: Text("=")),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: clearr, child: Text("clear"))
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 60),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
