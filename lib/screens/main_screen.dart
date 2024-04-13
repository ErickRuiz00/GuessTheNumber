import 'package:flutter/material.dart';
import 'package:guess_the_number/widgets/columns_container.dart';
import 'package:guess_the_number/widgets/custom_button.dart';
import 'package:guess_the_number/widgets/custom_slider.dart';
import 'package:guess_the_number/widgets/input_number.dart';

class MainScreen extends StatefulWidget {
  
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<int> _tryLower = [], _tryHigher = [], _history = [];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Adivina el número")),
      ),
      body: Column(
        children: [
          Text("Intentos restantes: "),
          InputNumber(),
          CustomSlider(),
          ColumnsContainer(tryHigher: _tryHigher, tryLower: _tryLower, history: _history)          
        ],
      ),
      floatingActionButton: CustomButton(),
    );
  }
}

