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
  value(){
     ElevatedButton.styleFrom(
    backgroundColor: Colors.red,
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
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('S Size Selector',style: TextStyle(
                    ))),
                  );
                }, child:Text('S'),
                ),
                ElevatedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('M Size Selector')),
                  );
                }, child: Text('M')),
                ElevatedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('L Size Selector')),
                  );
                }, child: Text("L")),
                ElevatedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('XL Size Selector')),
                  );
                }, child: Text('XL')),
                ElevatedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('XXL Size Selector')),
                  );
                }, child:Text("XXL")),
                ElevatedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('XXXL Size Selector')),
                  );
                }, child: Text('XXXL'))
              ],
            ),
          ],

        ),
      ),
    );
  }
}
