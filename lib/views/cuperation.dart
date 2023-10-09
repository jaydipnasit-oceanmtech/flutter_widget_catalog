import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Widget_Screens.dart';

class CupertionWidgets extends StatefulWidget {
  const CupertionWidgets({super.key});

  @override
  State<CupertionWidgets> createState() => _CupertionWidgetsState();
}

class _CupertionWidgetsState extends State<CupertionWidgets> {
  DateTime _selectTime = DateTime.now();
  List selct = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];
  int o = 0;
  double _currentSliderValue = 0.0;
  bool swith = false;
  final TextEditingController _name = TextEditingController(text: "search");
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: Colors.amber,
          middle: Text("CupertionNavigatorbar"),
        ),
        
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: CupertinoButton(
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoActionSheet(
                      actions: [
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            isDefaultAction: true,
                            child: const Text("Defulactions")),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            isDefaultAction: true,
                            child: const Text("Action")),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            isDefaultAction: true,
                            child: const Text("Action")),
                      ],
                    );
                  },
                );
              },
              color: Colors.blue,
              child: Text("Button"),
            ),
          ),
          const CupertinoActivityIndicator(
            radius: 20,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 10,
          ),
          CupertinoButton(
            child: Text('Dialog'),
            onPressed: () {
              showCupertinoDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(
                    title: Text("CUpertionAleatDialog"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("hello1")),
                      Text("hello2"),
                    ],
                  );
                },
              );
            },
            color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          CupertinoContextMenu(
            actions: [
              CupertinoContextMenuAction(
                child: Text("Hello"),
                onPressed: () {
                  Navigator.pop(context);
                },
                isDestructiveAction: true,
              ),
              CupertinoContextMenuAction(
                child: Text("Hello"),
                onPressed: () {
                  Navigator.pop(context);
                },
                isDestructiveAction: true,
              ),
            ],
            child: Icon(Icons.menu),
          ),
          SizedBox(height: 10),
          Center(
            child: CupertinoButton(
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 300.0,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: _selectTime,
                        onDateTimeChanged: (DateTime newDate) {
                          setState(() {
                            _selectTime = newDate;
                          });
                        },
                      ),
                    );
                  },
                );
              },
              child: Text("DatePicker"),
              color: Colors.blue,
            ),
          ),
          CupertinoListSection.insetGrouped(
            header: const Text('My Reminders'),
            children: <CupertinoListTile>[
              CupertinoListTile.notched(
                title: const Text('Open pull request'),
                leading: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: CupertinoColors.activeGreen,
                ),
                trailing: const CupertinoListTileChevron(),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return const Text('Open pull request');
                    },
                  ),
                ),
              ),
              CupertinoListTile.notched(
                title: const Text('Push to master'),
                leading: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: CupertinoColors.systemRed,
                ),
                additionalInfo: const Text('Not available'),
              ),
              CupertinoListTile.notched(
                title: const Text('View last commit'),
                leading: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: CupertinoColors.activeOrange,
                ),
                additionalInfo: const Text('12 days ago'),
                trailing: const CupertinoListTileChevron(),
                onTap: () => Navigator.of(context).push(
                  CupertinoPageRoute<void>(
                    builder: (BuildContext context) {
                      return const Text('Open pull request');
                    },
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 10,
          ),
          CupertinoButton(
            color: Colors.black,
            child: Text("Cupertionpage Route"),
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => WidgetScreen(),
                ),
              );
            },
          ),
          SizedBox(
            height: 10,
          ),
          CupertinoButton(
            onPressed: () {},
            child: CupertinoPicker(
                itemExtent: 30,
                onSelectedItemChanged: (int value) {
                  setState(() {
                    o = value;
                  });
                },
                children: List.generate(5, (index) => Text(selct[index]))),
          ),
          //  CupertinoListTile.notched(
          //     title: const Text('Open pull request'),
          //     leading: Container(
          //       width: double.infinity,
          //       height: double.infinity,
          //       color: CupertinoColors.activeGreen,
          //     ),
          //     trailing: const CupertinoListTileChevron(),
          //     onTap: () => Navigator.of(context).push(
          //       CupertinoPageRoute<void>(
          //         builder: (BuildContext context) {
          //           return const Text('Open pull request');
          //         },
          //       ),
          //     ),
          //   ),
          //   CupertinoListTile.notched(
          //     title: const Text('Push to master'),
          //     leading: Container(
          //       width: double.infinity,
          //       height: double.infinity,
          //       color: CupertinoColors.systemRed,
          //     ),
          //     additionalInfo: const Text('Not available'),
          //   ),
          //   CupertinoListTile.notched(
          //     title: const Text('View last commit'),
          //     leading: Container(
          //       width: double.infinity,
          //       height: double.infinity,
          //       color: CupertinoColors.activeOrange,
          //     ),
          //     additionalInfo: const Text('12 days ago'),
          //     trailing: const CupertinoListTileChevron(),
          //     onTap: () => Navigator.of(context).push(
          //       CupertinoPageRoute<void>(
          //         builder: (BuildContext context) {
          //           return const Text('Open pull request');
          //         },
          //       ),
          //     ),
          //   ),

          SizedBox(
            height: 10,
          ),
          CupertinoButton(
              color: Colors.indigo,
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoPopupSurface(
                      child: Container(
                        height: 200,
                        width: 200,
                      ),
                    );
                  },
                );
              },
              child: Text("CupertinoPopupSurface ")),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: CupertinoTextField(
                prefix: Icon(Icons.search),
                controller: _name,
                placeholder: "search",
              ),
            ),
          ),
          CupertinoSlider(
            key: Key("hello"),
            max: 10,
            min: 0,
            value: _currentSliderValue,
            onChanged: (value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          //   CustomScrollView(
          //     slivers: <Widget>[
          //       CupertinoSliverNavigationBar(
          //         largeTitle: Text('Large Title'),
          //         trailing: CupertinoButton(
          //           child: Icon(CupertinoIcons.search),
          //           onPressed: () {
          //             // Implement search functionality here.
          //           },
          //         ),
          //       ),
          //       SliverToBoxAdapter(
          //         child: Container(
          //           height: 200, // Replace with your content.
          //           color: Colors.blue,
          //         ),
          //       ),
          //       // Add more slivers for your content.
          //     ],
          //   ),
          //
          SizedBox(
            height: 10,
          ),
          CupertinoSwitch(
            value: swith,
            onChanged: (value) {
              setState(() {
                swith = value;
              });
            },
          )
        ]),
      ),
    );
  }
}
