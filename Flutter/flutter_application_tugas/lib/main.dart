import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

  class MyApp extends StatelessWidget.Build 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Football Player"),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          height: 100,
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              CircleAvatar(),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Text("Nama Pemain 1"),
                      Text("Negara Asal 1"),
                      Text("Klub 1"),
                      Row(
                        children: [
                          for (int i = 0; i < 4; i++)
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
      ),
    );
  }
}

