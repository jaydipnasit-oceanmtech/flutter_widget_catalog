import 'package:flutter/material.dart';

class AnimatedCross extends StatefulWidget {
  const AnimatedCross({super.key});

  @override
  State<AnimatedCross> createState() => _AnimatedCrossState();
}

class _AnimatedCrossState extends State<AnimatedCross> {
  bool _image = true;
  double _font = 50;
  Color _color = Colors.red;
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
        ElevatedButton(
            onPressed: () {
              setState(() {
                _image = !_image;
                _font = _image ? 90 : 20;
                _color = _image ? Colors.green : Colors.red;
              });
            },
            child: Text("AnimatedCrossFade")),
        AnimatedCrossFade(
            firstChild: Image.network(
              "https://blog.logrocket.com/wp-content/uploads/2021/04/Building-Flutter-desktop-app-tutorial-examples.png",
              width: double.infinity,
            ),
            secondChild: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFoWzibtUvNzXaFoznK9tn4qs1qp-DBVb2iRtLgxc5wQcaWmMuM5aD-By6tr0AaOJACy4&usqp=CAU",
              width: double.infinity,
            ),
            crossFadeState: _image ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 10)),
        AnimatedDefaultTextStyle(
            child: Text("AnimatedTest"),
            style: TextStyle(fontSize: _font, color: _color),
            duration: Duration(seconds: 10))
      ]),
    );
  }
}
