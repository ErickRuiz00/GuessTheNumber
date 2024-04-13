import 'dart:math';

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
  late int _targetNumber;
  late int _userGuess, _userTries, _currentLimit;
  final List<int> _tries = [5, 8, 15, 25], _levelLimits = [10, 20, 100, 1000]; 
  final List<String> levels = ["Fácil", "Normal", "Difícil", "Extremo"];
  late String _currentLevelTitle;
  late double _currentLevel;
  late List<int> _tryLower, _tryHigher, _history;
  final fieldInputNumber = TextEditingController(); 
  late List<bool> win;

   @override
  void initState(){
    super.initState();
    _initializeGame(
      limit: _levelLimits[0], 
      tries: _tries[0], 
      levelTitle: levels[0],
      level: 0
    );

    _history = [];
    win = [];
  }

  void _initializeGame({
    required int limit,
    required int tries,
    required String levelTitle,
    required double level
  }){
    _targetNumber = Random().nextInt(limit) + 1;
    _currentLimit = limit;
    _userTries = tries;
    _currentLevelTitle = levelTitle;
    _currentLevel = level;
    _tryLower = [];
    _tryHigher = [];
  }

  bool isValidNumber({required int number, required int limit}) => number > 0 && number <= limit; 


  int _checkWinner(){
    // Win
    if(_userGuess == _targetNumber){
      win.add(true);
      return 1;
    }

    // Add to corresponding column
    _userGuess < _targetNumber? _tryHigher.add(_userGuess) : _tryLower.add(_userGuess);

    // Lose
    if(_userTries == 0){
      win.add(false);
      return -1;
    } 

    // Keep trying
    return 0;
  }

  void _userTry(String value){
    _userGuess = int.parse(value);

    fieldInputNumber.clear();

    if(!isValidNumber(number: _userGuess, limit: _currentLimit)){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Intenta un número entre [1-$_currentLimit]"),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 2),
        )
      );
      return;
    }

    setState(() {
      _userTries--;
    });

    final int result = _checkWinner();      

    if(result != 0){
      _history.add(_targetNumber);
      _initializeGame(
        limit: _currentLimit,
        tries: _tries[_currentLevel.toInt()],
        levelTitle: _currentLevelTitle,
        level: _currentLevel
      );
    }
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Adivina el número")),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: InputNumber(_userTry, fieldInputNumber),
          ),
          Text("Intentos restantes: $_userTries"),
          CustomSlider(
            _currentLevel, 
            _currentLevelTitle, 
            (value) =>  setState(() {
                final int index = value.toInt();
                _currentLevelTitle = levels[index];
                _currentLevel = value;
                _initializeGame(
                  limit: _levelLimits[index], 
                  tries: _tries[index], 
                  levelTitle: _currentLevelTitle, 
                  level: _currentLevel
                );
              })
            ),
          const SizedBox(height: 30),
          ColumnsContainer(_tryHigher,_tryLower, _history, win: win)          
        ],
      ),
      floatingActionButton: CustomButton( () {
        setState(() {
          _initializeGame(
            limit: _currentLimit, 
            tries: _tries[_currentLevel.toInt()], 
            levelTitle: _currentLevelTitle, 
            level: _currentLevel
          );
        });
      }
      ),
    );
  }
}

