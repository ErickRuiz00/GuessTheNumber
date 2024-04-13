import 'package:flutter/material.dart';
import 'package:guess_the_number/widgets/column_data.dart';

class ColumnsContainer extends StatelessWidget {
  const ColumnsContainer({
    super.key,
    required List<int> tryHigher,
    required List<int> tryLower,
    required List<int> history,
  }) : _tryHigher = tryHigher, _tryLower = tryLower, _history = history;

  final List<int> _tryHigher;
  final List<int> _tryLower;
  final List<int> _history;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColumnData("Mayor que", _tryHigher),
          ColumnData("Menor que", _tryLower),
          ColumnData("Historial", _history),
        ],
      ),
    );
  }
}