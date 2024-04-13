import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final double value;
  final String label;
  final ValueChanged<double>? valueChanged;

  const CustomSlider(
    this.value,
    this.label,
    this.valueChanged,
    {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: value, 
          onChanged: valueChanged,
          min: 0,
          max: 3,
          divisions: 3,
        ),
        Text("Dificultad: $label"),
      ],
    );
  }
}