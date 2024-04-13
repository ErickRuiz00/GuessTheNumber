import 'package:flutter/material.dart';
import 'package:guess_the_number/widgets/column_data.dart';

class ColumnsContainer extends StatelessWidget {
  final List<int> _tryHigher, _tryLower, _history;
  final List<bool>? win;

  const ColumnsContainer(
    this._tryHigher,
    this._tryLower,
    this._history, {
    super.key, // Key should be declared separately
    this.win,
  }); // Super should be called like this

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColumnData("Mayor que", _tryHigher),
          ColumnData("Menor que", _tryLower),
          ColumnData("Historial", _history, win: win),
        ],
      ),
    );
  }
}
