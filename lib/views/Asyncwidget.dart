import 'package:flutter/material.dart';

class FutureBulider1 extends StatefulWidget {
  const FutureBulider1({super.key});

  @override
  State<FutureBulider1> createState() => _FutureBulider1State();
}

class _FutureBulider1State extends State<FutureBulider1> {
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate a 2-second delay.
    return 'Hello, FutureBuilder!';
  }

  Stream<String> getNumberStream() async* {
    await Stream.periodic(Duration(seconds: 5));
    yield "Hello,StreamBulider!";
  }

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
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        FutureBuilder(
          future: fetchData(), // The Future<T> you want to work with.
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // While the Future is still running.
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              // If the Future throws an error.
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              // If the Future completes successfully.
              return Center(child: Text('Data: ${snapshot.data}'));
            }
          },
        ),
        StreamBuilder(
          stream: getNumberStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // Display the data from the stream
              return Text('String: ${snapshot.data}');
            } else if (snapshot.hasError) {
              // Handle error case
              return Text('Error: ${snapshot.error}');
            } else {
              // Handle loading or initial state

              return CircularProgressIndicator();
            }
          },
        )
      ]),
    );
  }
}
