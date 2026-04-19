ui design
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "whatsApp",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.heart_broken),
          ],
          leading: CircleAvatar(child: Text("W")),
        ),

        body: Column(
          children: [
            Text("welcome"),
            CircleAvatar(child: Text("W")),

            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                "WELCOME!!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(30),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "image/img1.jpeg",
                  width: 100,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              child: Text("click elevated button"),
            ),

            TextButton(
              onPressed: () {},
              child: Text("click text button"),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
          ],
        ),
      ),
    );
  }
}
