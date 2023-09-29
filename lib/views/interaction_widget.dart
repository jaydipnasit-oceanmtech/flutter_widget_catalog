import 'package:flutter/material.dart';

class InteractionWidget1 extends StatefulWidget {
  const InteractionWidget1({super.key});

  @override
  State<InteractionWidget1> createState() => _InteractionWidget1State();
}

class _InteractionWidget1State extends State<InteractionWidget1> {
  List _name = [
    "Jaydip",
    "Nasit",
    "Kewin",
    "Raj",
    "Dishant",
  ];
  Color targetColor = Colors.grey;
  bool isInteractionEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      )),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: AbsorbPointer(
            absorbing: false,
            child: MaterialButton(
              color: Colors.red,
              onPressed: () {
                print("Hello");
              },
              child: Text("AbsorbPointer"),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text('Try clicking the button above.'),
        Container(
          height: 200,
          child: ListView.builder(
            itemCount: _name.length,
            itemBuilder: (context, index) {
              return Dismissible(
                  key: Key(index.toString()),
                  background: Container(color: Colors.red),
                  secondaryBackground: Container(color: Colors.yellow),
                  onDismissed: (direction) {
                    if (direction == DismissDirection.startToEnd) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(_name[index])));
                    }
                  },
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text(_name[index]),
                  ));
            },
          ),
        ),
        Draggable(
          //childWhenDragging: Container(),
          feedback: Container(
            height: 100,
            width: 100,
            color: Colors.blueAccent,
          ),
          child: Container(
            height: 100,
            width: 100,
            child: Center(child: Text("Draggable")),
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // DragTarget<Color>(
        //   onWillAccept: (data) {
        //     return true;
        //   },
        //   onAccept: (color) {
        //     // Handle the accepted color.
        //     setState(() {
        //       targetColor = color;
        //     });
        //   },
        //   builder: (context, candidateData, rejectedData) {
        //     return Container(
        //       height: 100,
        //       width: 100,
        //       color: candidateData.isEmpty ? targetColor : Colors.green,
        //     );
        //   },
        // ),
        
        IgnorePointer(
          ignoring: isInteractionEnabled,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(color: Colors.green),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              // Toggle interaction
              isInteractionEnabled = !isInteractionEnabled;
            });
          },
          child: Text(isInteractionEnabled ? 'Disable Interaction' : 'Enable Interaction'),
        ),

        InteractiveViewer(
            boundaryMargin: EdgeInsets.all(10),
            minScale: 0.1,
            maxScale: 2.0,
            child: Container(
              height: 100,
              width: 300,
              color: Colors.pink,
            )),
        Expanded(
          child: DraggableScrollableSheet(
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.blue[100],
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text('Item $index'));
                  },
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
