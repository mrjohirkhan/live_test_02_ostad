import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Need Blood',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add,color: Colors.white,)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 100,
              backgroundColor: Colors.grey,
              child: IconButton(
                iconSize: 120,
                onPressed: () {},
                icon: Icon(
                  Icons.bloodtype_outlined,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Donate Blood',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
