import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Multiplicação',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculadoraScreen(),
    );
  }
}

class CalculadoraScreen extends StatefulWidget {
  @override
  _CalculadoraScreenState createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  double numero1 = 0;
  double numero2 = 0;
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Multiplicação'),
      ),
      body: Container(
        color: Colors.black, // Fundo preto
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Digite o 1º Numero',
                    labelStyle: TextStyle(color: Colors.white)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25.0),
                onChanged: (value) {
                  setState(() {
                    numero1 = double.tryParse(value) ?? 0;
                  });
                },
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Digite o 2º Numero',
                    labelStyle: TextStyle(color: Colors.white)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25.0),
                onChanged: (value) {
                  setState(() {
                    numero2 = double.tryParse(value) ?? 0;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    resultado = numero1 * numero2;
                  });
                },
                child: Text('Calcular'),
              ),
              SizedBox(height: 20),
              Text(
                'Resultado: $resultado',
                style: TextStyle(
                    fontSize: 25, color: Colors.white), // Texto branco
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}