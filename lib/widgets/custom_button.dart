import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CustomButton(
    this.onPressed,{
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: onPressed,
          child: const Icon(Icons.refresh_rounded),
          ),
      ],
    );
  }
}