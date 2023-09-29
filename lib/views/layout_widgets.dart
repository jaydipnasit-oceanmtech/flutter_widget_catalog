import 'package:flutter/material.dart';

class LayoutWidgets extends StatefulWidget {
  const LayoutWidgets({super.key});

  @override
  State<LayoutWidgets> createState() => _LayoutWidgetsState();
}

class _LayoutWidgetsState extends State<LayoutWidgets> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          elevation: 20,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          currentIndex: _count,
          onTap: (value) {
            setState(() {
              _count = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "edit"),
            // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
            // BottomNavigationBarItem(icon: Icon(Icons.book), label: "book"),
          ]),
      appBar: AppBar(
          leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      )),
      body: SingleChildScrollView(
        child: Column(children: [
          //Single-child layout widgets
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              child: Align(
                child: FlutterLogo(),
                alignment: FractionalOffset(0.2, 0.4),
              ),
              color: Colors.green,
            ),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.black),
            ),
          ),
          Baseline(
            baseline: 10,
            baselineType: TextBaseline.alphabetic,
            child: Divider(
              thickness: 2,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 211,
                child: Container(
                  color: Colors.amber,
                  height: 100,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  width: 100,
                  height: 150,
                ),
                Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  width: 100,
                  height: 200,
                ),
              ],
            ),
          ),
          Wrap(
            spacing: 4,
            runSpacing: 20,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Container(
                height: 10,
                width: 200,
                color: Colors.green,
              ),
              Container(
                height: 10,
                width: 200,
                color: Colors.greenAccent,
              ),
              Container(
                height: 10,
                width: 200,
                color: Colors.red,
              ),
              Container(
                height: 10,
                width: 200,
                color: Colors.green,
              )
            ],
          ),
        ]),
      ),
    );
  }
}


// CustomScrollView(
//   slivers: <Widget>[
//     const SliverAppBar(
//       pinned: true,
//       expandedHeight: 250.0,
//       flexibleSpace: FlexibleSpaceBar(
//         title: Text('Demo'),
//       ),
//     ),
//     SliverGrid(
//       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//         maxCrossAxisExtent: 200.0,
//         mainAxisSpacing: 10.0,
//         crossAxisSpacing: 10.0,
//         childAspectRatio: 4.0,
//       ),
//       delegate: SliverChildBuilderDelegate(
//         (BuildContext context, int index) {
//           return Container(
//             alignment: Alignment.center,
//             color: Colors.teal[100 * (index % 9)],
//             child: Text('Grid Item $index'),
//           );
//         },
//         childCount: 20,
//       ),
//     ),
//     SliverFixedExtentList(
//       itemExtent: 50.0,
//       delegate: SliverChildBuilderDelegate(
//         (BuildContext context, int index) {
//           return Container(
//             alignment: Alignment.center,
//             color: Colors.lightBlue[100 * (index % 9)],
//             child: Text('List Item $index'),
//           );
//         },
//       ),
//     ),
//   ],
// )
