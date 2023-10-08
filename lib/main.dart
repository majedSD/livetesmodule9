import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color buttonColor=Colors.orange;
 void value(){
    setState(() {
      buttonColor=Colors.cyanAccent;
    });
  }
  showSnackBar(context,message){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$message')),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Size Selector',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonBar(
              children: [
                ElevatedButton(onPressed: (){
                      value();
                      showSnackBar(context,'S size Selector');
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                  ),
                  child:Text('S'),
                ),
                ElevatedButton(onPressed: (){
                  showSnackBar(context,'S size Selector');
                }, child: Text('M')),
                ElevatedButton(onPressed: (){
                  showSnackBar(context,'S size Selector');
                }, child: Text("L")),
                ElevatedButton(onPressed: (){
                  showSnackBar(context,'S size Selector');
                }, child: Text('XL')),
                ElevatedButton(onPressed: (){
                  showSnackBar(context,'S size Selector');
                }, child:Text("XXL")),
                ElevatedButton(onPressed: (){
                  showSnackBar(context,'S size Selector');
                }, child: Text('XXXL'))
              ],
            ),
          ],

        ),
      ),
    );
  }
}
//
// class _HomePageState extends State<HomePage> {
//   Color buttonColor = Colors.red; // Initial button color
//
//   void changeButtonColor() {
//     setState(() {
//       // Change button color to a different color when pressed
//       buttonColor = Colors.blue; // Change this color to the desired color
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Size Selector',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ButtonBar(
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     changeButtonColor(); // Call the function to change color
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('S Size Selector')),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: buttonColor, // Set the button's background color
// //                   ),
//                   child: Text('S'),
//                 ),
//                 // Repeat the same pattern for other buttons
//                 // ...
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
