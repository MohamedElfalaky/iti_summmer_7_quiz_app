import 'package:flutter/material.dart';
import 'package:iti_summmer_7_quiz_app/lec3_notes.dart';

void main() {
  Person person1 =
      Person(name: "Hassan", age: 30, isMale: true, isMarried: false);
  Person person2 =
      Person(name: "Sara", age: 25, isMale: false, isMarried: true);

  // person1.name = "Khaled";
  // person1.isMale = true;
  // person1.age = 20;

  // person2.name = "Sara";
  // person2.isMale = false;
  // person2.age = 18;

  person1.printPersonData();
  person2.printPersonData();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'السلام عليكم، أهلاً عالم.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'لقد قمت بالضغط علي هذا الزر هذا العدد من المرات',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            SizedBox(
              width: 100,
            ),
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
              child: const Icon(Icons.minimize),
            )
          ],
        ));
  }
}
