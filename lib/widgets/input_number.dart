import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class InputNumber extends StatelessWidget {
  const InputNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(labelText: "Inserta un número"),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
    );
  }
}