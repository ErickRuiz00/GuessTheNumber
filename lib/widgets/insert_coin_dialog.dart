import 'package:flutter/material.dart';

class CoinDialog extends StatelessWidget {
  const CoinDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text("Inserta una moneda"),
    );
  }
}