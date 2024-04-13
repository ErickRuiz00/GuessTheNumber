import 'package:flutter/material.dart';

class ColumnData extends StatelessWidget {
  final List<String> numbers;
  final String columnTitle;

  const ColumnData(
    this.columnTitle,
    this.numbers,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 350,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2
          ),
        ),
        child: Column(
          children: [
            Text(columnTitle),

            for(String number in numbers)
              Text(number.toString())
          ],
        ),
      ),
    );
  }
}