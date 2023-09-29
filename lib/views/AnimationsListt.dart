import 'package:flutter/material.dart';

class AnimatedPhysicalModel1 extends StatefulWidget {
  const AnimatedPhysicalModel1({super.key});

  @override
  State<AnimatedPhysicalModel1> createState() => _AnimatedPhysicalModel1State();
}

class _AnimatedPhysicalModel1State extends State<AnimatedPhysicalModel1> with SingleTickerProviderStateMixin {
  bool times = true;
  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(60.0),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66666666),
          blurRadius: 10.0,
          spreadRadius: 3.0,
          offset: Offset(0, 6.0),
        ),
      ],
    ),
    end: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.zero,
      // No shadow.
    ),
  );
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
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
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: AnimatedPhysicalModel(
              child: SizedBox(height: 200, width: 200, child: Icon(Icons.person)),
              shape: BoxShape.rectangle,
              elevation: times ? 0 : 30,
              curve: Curves.fastOutSlowIn,
              color: Colors.white,
              shadowColor: Colors.black,
              duration: Duration(seconds: 2)),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                times = !times;
              });
            },
            child: Text("AnimatedPhysicalModel ")),
        SizedBox(
          height: 10,
        ),

        //DecoratedBoxTransition

        DecoratedBoxTransition(
          decoration: decorationTween.animate(_controller),
          child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(10),
            child: const FlutterLogo(),
          ),
        ),
        FadeTransition(
          opacity: _animation,
          child: const Padding(
              padding: EdgeInsets.all(8),
              child: FlutterLogo(
                size: 40,
              )),
        ),

        //RotationTransition
        RotationTransition(
          turns: _animation,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(size: 150.0),
          ),
        ),
      ]),
    );
  }
}
