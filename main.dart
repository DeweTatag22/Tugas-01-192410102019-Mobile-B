import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> kontak = [
    {
      "nama": "Angel dimana anak kambing",
      "email": "Angel.mana@gmail.com",
      "hp": "08123892393",
    },
    {
      "nama": "Ronaldo",
      "email": "Ronaldo.critical@gmail.com",
      "hp": "085342342424",
    },
    {
      "nama": "Maradona",
      "email": "maradona.portugal@gmail.com",
      "hp": "081323434131",
    },
    {
      "nama": "Lionel Messi bin Nicaolal tesla",
      "email": "Lionel.Messi@gmail.com",
      "hp": "083424323424",
    },
    {
      "nama": "Dimaria angel",
      "email": "Dimaria.ind@gmail.com",
      "hp": "08342432434",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("KONTAK"),
        ),
        body: ListView(
          children: kontak.map((data) {
            kontak.sort((a, b) => a["nama"].compareTo(b["nama"]));
            return Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.withOpacity(1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 5),
                    )
                  ]),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data["nama"],
                            ),
                            Text(
                              data["email"],
                            ),
                            Text(data["hp"]),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
