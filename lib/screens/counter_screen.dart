import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 100;

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('CounterScreen')),
        backgroundColor: Colors.blue[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,  // default
          children: [
            // Text('Account of clicks', style: TextStyle(fontSize: 30)),
            Text('Account of clicks', style: fontSize30),
            Text('$count', style: fontSize30),
          ],
        ),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print("Hola mundo");
          count++; 
          // print('$count');
          setState(() {});
        },
      ),
    );
  }
}


