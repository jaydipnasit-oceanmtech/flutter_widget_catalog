import 'package:flutter/material.dart';

class MaterialCommun extends StatefulWidget {
  const MaterialCommun({super.key});

  @override
  State<MaterialCommun> createState() => _MaterialCommunState();
}

class _MaterialCommunState extends State<MaterialCommun> {
  int value1 = 0;
  bool chek = true;

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
        floatingActionButton: FloatingActionButton.extended(
          label: Text("Communite"),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 800,
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: Card(
                        elevation: 40,
                        child: ListTile(
                          title: Text("Abc"),
                          subtitle: Text("Jaydip"),
                          leading: Icon(Icons.person),
                        )),
                  ),
                );
              },
            );
          },
          icon: Icon(Icons.edit),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: double.infinity,
              child: Card(
                  elevation: 03,
                  child: ListTile(
                    title: Text("Abc"),
                    subtitle: Text("Jaydip"),
                    leading: Icon(Icons.person),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Badge(
              label: Text("$value1"),
              child: InkWell(child: Icon(Icons.edit)),
            ),
            LinearProgressIndicator(
              color: Colors.red,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  value1++;
                });
              },
              color: Colors.white,
              child: Text("Add"),
            ),
            Checkbox(
              value: chek,
              onChanged: (value) {
                setState(() {
                  chek = value!;
                });
              },
            ),
            Chip(
              label: Text("Text"),
            ),
            InkWell(
              onTap: () async {
                showDatePicker(
                    context: context, initialDate: DateTime.now(), firstDate: DateTime(2020), lastDate: DateTime(2023));
              },
              child: Text("Abc"),
            )
          ],
        ));
  }
}
