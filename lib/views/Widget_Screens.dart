import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/AnimatedCross_screen.dart';
import 'package:flutter_application_1/views/Animatedbulider_screen.dart';
import 'package:flutter_application_1/views/Animatedcontrol_screen.dart';
import 'package:flutter_application_1/views/AnimationsListt.dart';
import 'package:flutter_application_1/views/Animations_screen.dart';
import 'package:flutter_application_1/views/Asyncwidget.dart';
import 'package:flutter_application_1/views/Basic_widget.dart';
import 'package:flutter_application_1/views/CupertinoTabar.dart';
import 'package:flutter_application_1/views/Input_widget.dart';
import 'package:flutter_application_1/views/Material_widget.dart';
import 'package:flutter_application_1/views/Painting%20_effect.dart';
import 'package:flutter_application_1/views/Scrolling_widgets.dart';
import 'package:flutter_application_1/views/Semantics_screens.dart';
import 'package:flutter_application_1/views/Sliver_widgets.dart';
import 'package:flutter_application_1/views/bottom_appbar.dart';
import 'package:flutter_application_1/views/cuperation.dart';
import 'package:flutter_application_1/views/from_validations.dart';
import 'package:flutter_application_1/views/interaction_widget.dart';
import 'package:flutter_application_1/views/layout_widgets.dart';

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({super.key});

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Widget catalog"),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          )),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 30,
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
                      builder: (context) => AnimationsAlign1(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("AnimatedAlign"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Animatedbulider(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("Animatedbulider "),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimaterContainer1(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("AnimateContaner"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimatedPhysicalModel1(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("AnimatedPhysicalModel1"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnimatedCross(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("AnimatedCross"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FutureBulider1(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("Async Widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BasicWidgets(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("Basic Widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CupertionWidgets(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("cuperation Widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CupertinoTab1(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("CupertinoTabar Widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InteractionWidget1(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("Interaction model widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputWidget(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("Input Widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LayoutWidgets(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("Layout Widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sliverwidgets1(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("Sliver widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScrollingWidgets(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("Scrolling widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaintingEffect(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("Painting and effect  widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MaterialCommun(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("Material Components widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomApp(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("BottomApp widgets"),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormValidations(),
                    ));
              },
              height: 50,
              minWidth: 200,
              color: Colors.blue,
              child: Text("Form"),
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
