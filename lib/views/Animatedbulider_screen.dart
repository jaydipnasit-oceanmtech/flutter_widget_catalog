import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animatedbulider extends StatefulWidget {
  const Animatedbulider({super.key});

  @override
  State<Animatedbulider> createState() => _AnimatedbuliderState();
}

class _AnimatedbuliderState extends State<Animatedbulider> with TickerProviderStateMixin {
  bool _sel = false;
  late final AnimationController controller = AnimationController(vsync: this, duration: Duration(seconds: 2))
    ..repeat();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
      body: Scaffold(
        body: Column(
          children: [
            Center(
              child: AnimatedBuilder(
                animation: controller,
                child: Container(
                  height: 200,
                  width: 100,
                  color: Colors.green,
                ),
                builder: (context, child) {
                  return Transform.rotate(
                    angle: controller.value * 2 * pi,
                    child: child,
                  );
                },
              ),
            ),
            ExpansionTile(
              onExpansionChanged: (value) {
                setState(() {
                  _sel = value;
                });
              },
              title: Text("Select"),
              trailing: Icon(Icons.arrow_downward),
              children: [
                ListTile(
                  title: Text("Hellow1"),
                  selected: _sel,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Animatedbulider(),
                        ));
                  },
                ),
                ListTile(
                  title: Text("Hellow1"),
                  selected: _sel,
                ),
                ListTile(
                  title: Text("Hellow1"),
                  selected: _sel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
