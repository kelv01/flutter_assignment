import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = ''; // Initial empty text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'I am Rich',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20), // Push content below the app bar
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Image.asset(
                  'assets/erik.jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
              Flexible(
                child: Image.asset(
                  'assets/maxi.jpg',
                  height: 200,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Space between images and text
          Text(
            displayText, // Dynamically updated text
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20), // Space between text and button
          ElevatedButton(
            onPressed: () {
              setState(() {
                displayText = 'Welcome to my robots shop'; // Update the text
              });
            },
            child: Text('Click Me'),
          ),
        ],
      ),
    );
  }
}
