import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Exclude_screens.dart';
import 'package:flutter_application_1/views/Merge_screens.dart';
import 'package:flutter_application_1/views/Semantics_screens.dart';

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({super.key});

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExcludeScreen(),
                  ));
            },
            height: 50,
            minWidth: 200,
            color: Colors.blue,
            child: Text("ExcludeSemantics "),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MergeScreens(),
                  ));
            },
            height: 50,
            minWidth: 200,
            color: Colors.blue,
            child: Text("MergeSemantics"),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SemanticsScrren(),
                  ));
            },
            height: 50,
            minWidth: 200,
            color: Colors.blue,
            child: Text("Semantics "),
          ),
        ]),
      ),
    );
  }
}
