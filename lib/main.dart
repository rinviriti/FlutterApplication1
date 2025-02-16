import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Plant Shop 🌿"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.fromLTRB(30, 30, 30, 400),
          color: const Color.fromARGB(255, 246, 246, 246),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Special Offer!'),
                    Icon(Icons.favorite_border),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/img1.jpg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Beautiful Indoor Plant",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "2,500",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "3,500",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      decoration: TextDecoration.lineThrough,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
