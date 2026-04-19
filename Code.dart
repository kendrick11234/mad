import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        title: Text("Flutter UI Practice"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
        leading: Icon(Icons.menu),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // 🔹 TEXT
            Text(
              "Welcome to Flutter",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            // 🔹 ROW + ICONS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home, size: 30),
                Icon(Icons.favorite, size: 30, color: Colors.red),
                Icon(Icons.settings, size: 30),
              ],
            ),

            SizedBox(height: 20),

            // 🔹 CONTAINER
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "Container",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 20),

            // 🔹 CIRCLE AVATAR
            CircleAvatar(
              radius: 30,
              child: Text("A"),
            ),

            SizedBox(height: 20),

            // 🔹 IMAGE (ASSET)
            Container(
              width: 200,
              height: 200,
              child: Image.asset(
                "image/img1.jpeg",
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 20),

            // 🔹 BUTTONS
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
            ),

            TextButton(
              onPressed: () {},
              child: Text("Text Button"),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.thumb_up),
            ),

            SizedBox(height: 20),

            // 🔹 CARD
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("John Doe"),
                subtitle: Text("Flutter Developer"),
              ),
            ),

            SizedBox(height: 20),

            // 🔹 LIST VIEW (inside column demo)
            Column(
              children: [
                ListTile(title: Text("Item 1")),
                ListTile(title: Text("Item 2")),
                ListTile(title: Text("Item 3")),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
