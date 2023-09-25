import 'package:flutter/material.dart';

class ExcludeScreen extends StatefulWidget {
  const ExcludeScreen({super.key});

  @override
  State<ExcludeScreen> createState() => _ExcludeScreenState();
}

class _ExcludeScreenState extends State<ExcludeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: ExcludeSemantics(
            excluding: true,
            child: Text("Hello"),
          ),
        )
      ]),
    );
  }
}
