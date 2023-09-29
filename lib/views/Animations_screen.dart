import 'package:flutter/material.dart';

class AnimationsAlign1 extends StatefulWidget {
  const AnimationsAlign1({super.key});

  @override
  State<AnimationsAlign1> createState() => _AnimationsAlign1State();
}

class _AnimationsAlign1State extends State<AnimationsAlign1> {
  bool selected = false;
  double opacityLevel = 1.0;
  



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
        GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: Container(
              width: 250.0,
              height: 250.0,
              color: Colors.green,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(seconds: 1),
                curve: Curves.decelerate,
                child: const FlutterLogo(size: 50.0),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 3),
          child: const FlutterLogo(),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              opacityLevel = opacityLevel == 0.0 ? 2.0 : 0.0;
            });
          },
          child: const Text('AnimatedOpacity '),
        )
      ]),
    );
  }
}
