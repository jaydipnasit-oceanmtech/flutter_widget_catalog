import 'dart:ui';

import 'package:flutter/material.dart';

class PaintingEffect extends StatefulWidget {
  const PaintingEffect({super.key});

  @override
  State<PaintingEffect> createState() => _PaintingEffectState();
}

class _PaintingEffectState extends State<PaintingEffect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text("AppBar"),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: AlertDialog(
                  actions: [
                    Icon(Icons.abc),
                    Container(
                      height: 200,
                      width: 200,
                    )
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        RotatedBox(
          quarterTurns: 3,
          child: Text('Hello World!'),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Center(
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
            ),
          ),
        ),
        ClipOval(
          child: Center(
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
            ),
          ),
        ),
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: 0.8,
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSpoppKzfiHyFJU5aIPLTZcrFCQD_rXpnOrw&usqp=CAU"),
          ),
        )
      ]),
    );
  }
}
