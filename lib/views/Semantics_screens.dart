import 'package:flutter/material.dart';

class SemanticsScrren extends StatefulWidget {
  const SemanticsScrren({super.key});

  @override
  State<SemanticsScrren> createState() => _SemanticsScrrenState();
}

class _SemanticsScrrenState extends State<SemanticsScrren> {
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
        // lable
        Center(
          child: Semantics(
            label: 'Submit',
            child: ElevatedButton(
              onPressed: () {
                // Button action
              },
              child: Text('Submit'),
            ),
          ),
        ),
        //hint
        Semantics(
          enabled: false,
          label: 'Search',
          hint: 'Press to search',
          child: ElevatedButton(
            onPressed: () {
              // Search action
            },
            child: Icon(Icons.search),
          ),
        ),
        //value
        Semantics(
          label: 'Brightness',
          value: '50%',
          child: Slider(
            value: 0.5,
            onChanged: (newValue) {
              // Update brightness
            },
          ),
        )
      ]),
    );
  }
}
