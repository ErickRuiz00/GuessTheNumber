import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: 2, 
          onChanged: (value){},
          min: 0,
          max: 3,
          divisions: 3,
        ),
        Text("Dificultad: "),
      ],
    );
  }
}