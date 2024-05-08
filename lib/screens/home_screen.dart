import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/gameScreen");
          }, 
          child: const Text("Insert coin")
        ),
      )
    );
  }
}





// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   bool hasCredits = false;

//   Future<void> _validateCard(BuildContext context) async {
//     setState(() {
//       hasCredits = !hasCredits; // Simulación de cambio de condición
//     });

//     if(hasCredits){
//       Navigator.pushNamed(context, "gameScreen");
//     }else{
//       await _showCoinDialog(context);
//     }
//   }

//   Future<void> _showCoinDialog(BuildContext context) async {
//     await showDialog<void>(
//       context: context, 
//       builder: (BuildContext context) {
//         return const CoinDialog();
//       }
//     );

//     // ignore: use_build_context_synchronously
//     _validateCard(context);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: TextButton(
//           onPressed: () {
//             _validateCard(context);
//           },
//           child: const Text("Iniciar"),
//         ),
//       ),
//     );
//   }
// }

// class CoinDialog extends StatelessWidget {
//   const CoinDialog({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const AlertDialog(
//       title: Text("Inserta una moneda"),
//     );
//   }
// }