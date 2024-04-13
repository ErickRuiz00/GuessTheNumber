import 'package:flutter/material.dart';

class ColumnData extends StatelessWidget {
  final List<int> numbers;
  final String columnTitle;
  final List<bool>? win;

  const ColumnData(
    this.columnTitle,
    this.numbers,
    {super.key,
    this.win}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Padding(padding: EdgeInsets.all(5)),
              Text(columnTitle, style: const TextStyle(fontWeight: FontWeight.bold),),
          
              // Columns "Mayor que" - "Menor que"
              if(win == null)  
                for(int number in numbers)
                  Text(number.toString())
          
              // Column "Historial"
              else
                for(int i = 0; i < numbers.length; i++)
                    Text(
                      numbers[i].toString(), 
                      style: TextStyle(color: win![i]? Colors.green : Colors.red),
                    )        
            ],
          ),
        ),
      ),
    );
  }
}