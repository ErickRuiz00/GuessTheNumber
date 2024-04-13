import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Adivina el número")),
      ),
      body: Column(
        children: [
          Text("Intentos restantes: "),
          Text("Dificultad: "),
          TextField(
            decoration: const InputDecoration(labelText: "Inserta un número"),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
          Slider(
            value: 0, 
            onChanged: (value){}, 
            min: 0, 
            max: 10, 
            divisions: 3
          )
        ],
      ),
    );
  }
}