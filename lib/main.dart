import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          leading: Icon(Icons.home),
          title: Text("Aplikasi Pertamaku"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.archive),
                  SizedBox(width: 10),
                  Text("Artikel Baru"),
                ],
              ),

              Card(
                child: Column(
                  children: [
                    Image.network(
                      "assets/images/IMG-20230801-WA0086.jpg",
                      width: 120,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10),
                    Text("HALLO NAMA SAYA TASLIM GANTENG"),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                        "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Text(
                    "Komentar",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),

              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("John Doe"),
                            Text("Lorem ipsum dolor sit amet."),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mary Doe"),
                            Text("Lorem ipsum dolor sit amet."),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Alex Doe"),
                            Text("Lorem ipsum dolor sit amet."),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Jane Doe"),
                            Text("Lorem ipsum dolor sit amet."),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Michael Doe"),
                            Text("Lorem ipsum dolor sit amet."),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}