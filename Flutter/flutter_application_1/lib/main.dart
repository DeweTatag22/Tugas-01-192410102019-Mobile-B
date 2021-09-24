import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> list_pemain = [
    "Ronaldo",
    "Pele",
    "Diego Maradona",
    "Lionel Messi",
  ];
  List<String> list_negara = [
    "Portugal",
    "Brazil",
    "Argentina",
    "Argentina",
  ];
  List<String> list_club = [
    "Manchaster United",
    "Vasco da Gama",
    "Boca Junior",
    "Barcelona",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Football Player"),
        ),
        body: ListView(children: [
          for (int i = 0; i < list_pemain.length; i++)
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
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
              child: Row(
                children: [
                  CircleAvatar(),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 90,
                      height: 90,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(list_pemain[i]),
                          Text(list_negara[i]),
                          Text(list_club[i]),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ]),
      ),
    );
  }
}
