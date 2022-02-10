import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class minhaHome extends StatefulWidget {
  const minhaHome({Key? key}) : super(key: key);

  @override
  _minhaHomeState createState() => _minhaHomeState();
}

class _minhaHomeState extends State<minhaHome> {
  TextEditingController v1 = TextEditingController();
  TextEditingController v2 = TextEditingController();
  String x = 'Resultado';

  void calcular() {
    double a = double.parse(v1.text);
    double b = double.parse(v2.text);
    double resultado = a + b;
    x = 'Resultado' $(resultado.toStringAsFixed(2));
  }
};

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      title: Text('Calcular'),
    ),
    body: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.person,
            size: 75,
            color: Colors.teal,
          ),
          TextField(
            maxLength: 10,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                labelText: 'Digite um numero',
                labelStyle: TextStyle(
                  fontSize: 14,
                )),
          ),
          TextField(
            maxLength: 10,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                icon: Icon(
                  Icons.password,
                  size: 30,
                ),
                labelText: 'Digite um numero',
                labelStyle: TextStyle(
                  fontSize: 14,
                )),
          ),
          SizedBox(
            height: 18,
          ),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal,
                fixedSize: Size(0, 40),
              ),
              onPressed: calcular,
              child: Text(
                'Calcular',
                style: TextStyle(color: Colors.white),
              )),
          Text('Resultado')
        ],
      ),
    ),
  );
}}
