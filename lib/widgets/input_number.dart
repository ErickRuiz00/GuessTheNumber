import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class InputNumber extends StatelessWidget {
   final ValueChanged<String>? onSubmit;
   final TextEditingController controller;
    

  const InputNumber(
    this.onSubmit, 
    this.controller,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(labelText: "Inserta un número"),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      onSubmitted: onSubmit,
      controller: controller,
    );
  }
}