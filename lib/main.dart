import 'package:flutter/material.dart';
import 'package:iti_summmer_7_quiz_app/notes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'quiz app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {},
        ),
        actions: [
          Icon(Icons.message),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.notification_add,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 12,
          )
        ],
        title: Text("Quiz app"),
        // centerTitle: false,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "1st Qestion",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "What is the last country to host the world cup?",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(onPressed: () {}, child: Text("USA")),
              ElevatedButton(onPressed: () {}, child: Text("Qatar")),
              ElevatedButton(onPressed: () {}, child: Text("France")),
              ElevatedButton(onPressed: () {}, child: Text("Egypt")),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
      ),
    );
  }
}
