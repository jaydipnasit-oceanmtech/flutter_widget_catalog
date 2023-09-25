import 'package:flutter/material.dart';

class MergeScreens extends StatefulWidget {
  const MergeScreens({super.key});

  @override
  State<MergeScreens> createState() => _MergeScreensState();
}

class _MergeScreensState extends State<MergeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("MergeSemantics"),
        ),
        backgroundColor: Colors.white,
        body: MergeSemantics(
          child: Row(
            children: <Widget>[
              Checkbox(
                value: true,
                onChanged: (bool? value) {},
              ),
              const Text('Settings'),
            ],
          ),
        ));
  }
}
