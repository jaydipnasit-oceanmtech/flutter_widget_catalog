import 'package:flutter/material.dart';

class AnimaterContainer1 extends StatefulWidget {
  const AnimaterContainer1({super.key});

  @override
  State<AnimaterContainer1> createState() => _AnimationsAlign1State();
}

class _AnimationsAlign1State extends State<AnimaterContainer1> {
  double heg = 50;
  double width = 300;
  bool selected = true;
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
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 20),
            width: width,
            height: heg,
            color: Colors.red,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                heg = heg == 200 ? 250 : 200;
                width = width == 300 ? 400 : 300;
              });
            },
            child: Text("AnimatedContener")),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 200,
          height: 350,
          child: Stack(
            children: [
              AnimatedPositioned(
                width: selected ? 200.0 : 50.0,
                height: selected ? 50.0 : 200.0,
                top: selected ? 50.0 : 150.0,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: const ColoredBox(
                    color: Colors.blue,
                    child: Center(child: Text('Tap me')),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
