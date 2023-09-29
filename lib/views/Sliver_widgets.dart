import 'package:flutter/material.dart';

class Sliverwidgets1 extends StatefulWidget {
  const Sliverwidgets1({super.key});

  @override
  State<Sliverwidgets1> createState() => _Sliverwidgets1State();
}

class _Sliverwidgets1State extends State<Sliverwidgets1> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("SliverAppBar"),
          stretchTriggerOffset: 300.0,
          expandedHeight: 200.0,
          flexibleSpace: const FlexibleSpaceBar(
            title: Text('SliverAppBar'),
            background: FlutterLogo(),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 10.0,
                child: Center(
                  child: Text('$index', textScaleFactor: 5),
                ),
              );
            },
            childCount: 10,
          ),
        ),
        // SliverFixedExtentList(
        //   itemExtent: 30.0,
        //   delegate: SliverChildBuilderDelegate(
        //     (BuildContext context, int index) {
        //       return Container(
        //         alignment: Alignment.center,
        //         color: Colors.lightBlue[100 * (index % 9)],
        //         child: Text(
        //           'list item $index',
        //           style: TextStyle(
        //             fontStyle: FontStyle.normal,
        //             fontSize: 5,
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text(
                  'grid item $index',
                  style: TextStyle(fontSize: 10),
                ),
              );
            },
            childCount: 20,
          ),
        )
      ],
    );
  }
}
