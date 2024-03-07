import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Addition App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Value 1'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Value 2'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                calculateSum();
              },
              child: Text('Calculate addition',style: TextStyle(color: Colors.green),),
            ),
            SizedBox(height: 20.0),
            Text('Result: $result', style: TextStyle(fontSize: 30.0,color: Colors.green)),
          ],
        ),
      ),
    );
  }

  void calculateSum() {
    try {
      double num1 = double.parse(num1Controller.text);
      double num2 = double.parse(num2Controller.text);
      double sum = num1 + num2;
      setState(() {
        result = sum.toString();
      });
    } catch (e) {
      setState(() {
        result = 'Error';
      });
    }
  }
}