import 'package:flutter/material.dart';

class ScrollingWidgets extends StatefulWidget {
  const ScrollingWidgets({super.key});

  @override
  State<ScrollingWidgets> createState() => _ScrollingWidgetsState();
}

class _ScrollingWidgetsState extends State<ScrollingWidgets> {
  List _name = [
    "jaydip",
    "Dip",
    "Kewin",
    "Raj",
    "X",
    "y",
    "1",
    "2",
    "3",
    "4",
    "5",
    "Kewin",
    "Raj",
    "X",
    "y",
    "1",
    "2",
    "3",
    "4",
    "5",
  ];
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
      body: Column(children: [
        Expanded(
          child: Scrollbar(
              thumbVisibility: true,
              thickness: 10,
              child: RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(Duration(seconds: 2));
                },
                child: ListView.builder(
                  itemCount: _name.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_name[index]),
                    );
                  },
                ),
              )),
        ),
      ]),
    );
  }
}
