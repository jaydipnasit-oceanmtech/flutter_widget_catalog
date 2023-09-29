import 'package:flutter/material.dart';
class BasicWidgets extends StatefulWidget {
  const BasicWidgets({super.key});

  @override
  State<BasicWidgets> createState() => _BasicWidgetsState();
}

class _BasicWidgetsState extends State<BasicWidgets> {
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
      body:Column(children: [
        Placeholder(
          color: Colors.blueGrey, // Color of the placeholder box.
          fallbackHeight: 100, // Height of the placeholder box.
          fallbackWidth: 100, // Width of the placeholder box.
        ),
        SizedBox(height: 20), // Add some spacing.
        Text(
          'This is a Placeholder!',
          style: TextStyle(fontSize: 20),
        ),
      ]) ,
    );
  }
}