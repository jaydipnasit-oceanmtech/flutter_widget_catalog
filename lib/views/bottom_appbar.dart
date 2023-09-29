import 'package:flutter/material.dart';

class BottomApp extends StatefulWidget {
  const BottomApp({super.key});

  @override
  State<BottomApp> createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  int _selectedIndex = 0;
  TimeOfDay _time = TimeOfDay.now();
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text("jaydipnasit123@gmail"),
            accountName: Text("Jaydip"),
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.green),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Name"),
            subtitle: Text("Jaydip"),
          ),
        ],
      )),
      // appBar: AppBar(
      //   bottom: TabBar(tabs: [
      //     Tab(
      //       text: 'Filghts',
      //       icon: Icon(Icons.flight),
      //     ),
      //     Tab(
      //       text: 'Filghts',
      //       icon: Icon(Icons.flight),
      //     ),
      //     Tab(
      //       text: 'Filghts',
      //       icon: Icon(Icons.flight),
      //     ),
      //   ]),
      // ),
      // bottomNavigationBar: BottomAppBar(
      //     elevation: 50,
      //     color: Colors.grey,
      //     padding: EdgeInsets.all(20),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Icon(Icons.add),
      //         Icon(Icons.person),
      //         Icon(Icons.cabin),
      //         Icon(Icons.energy_savings_leaf),
      //       ],
      //     )),
      body: Row(
        children: [
          NavigationRail(
              elevation: 20,
              minWidth: 80,
              onDestinationSelected: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
              backgroundColor: Colors.white,
              destinations: [
                NavigationRailDestination(
                    icon: Icon(Icons.edit), label: Text("Edit"), selectedIcon: Icon(Icons.person)),
                NavigationRailDestination(icon: Icon(Icons.person), label: Text("Edit")),
                NavigationRailDestination(icon: Icon(Icons.book), label: Text("Edit")),
              ],
              selectedIndex: _selectedIndex),
          SizedBox(
            width: 30,
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                height: 50,
                minWidth: 200,
                color: Colors.grey,
                onPressed: () async {
                  final TimeOfDay? timeOfDay = await showTimePicker(context: context, initialTime: _time);
                  if (timeOfDay != null) {
                    setState(() {
                      _time = timeOfDay;
                    });
                  }
                },
                child: Text("check Time"),
              ),
              Text("time:- ${_time.hour}:${_time.minute}"),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                height: 50,
                minWidth: 200,
                color: Colors.grey,
                onPressed: () async {
                  final DateTime? dateTime = await showDatePicker(
                      context: context, firstDate: DateTime(2020), initialDate: _dateTime, lastDate: DateTime(2025));
                  if (dateTime != null) {
                    setState(() {
                      _dateTime = dateTime;
                    });
                  }
                },
                child: Text("Date Picker"),
              ),
              Text("Date & Time ${_dateTime.year}/${_dateTime.month}/${_dateTime.day}"),
            ],
          )
        ],
      ),
    );
  }
}
