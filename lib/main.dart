import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

       title: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text("Greeting App",style: TextStyle(fontSize: 20,),),
       ),
      ),
  body: Center(

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hello, World!",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red
          ),),
        SizedBox(height: 8,),
        Text("Welcome to Flutter",style: TextStyle(fontSize: 16),),
        SizedBox(height: 12,),
        Image.network("https://tse3.mm.bing.net/th?id=OIP.bhsIu3g50eNf-ivenWEaYAHaFb&pid=Api&P=0&h=220"),
        SizedBox(height: 12,),
        ElevatedButton(onPressed: (){
           ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(
                 content: Text("Button pressed"),)
           );
        },
            child: Text("Press me"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white),
        )
      ],
    ),
  ) ,
    );
  }
}
