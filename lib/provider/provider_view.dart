import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/provider_logic.dart';
import 'package:provider/provider.dart';

class ProdviderScreen extends StatefulWidget {
  const ProdviderScreen({super.key});

  @override
  State<ProdviderScreen> createState() => _ProdviderScreenState();
}

class _ProdviderScreenState extends State<ProdviderScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CommonCalss>(context, listen: false);
    print("Hello");
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              provider.dicrementValu();
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              provider.zeroValu();
            },
            child: Icon(Icons.refresh),
          ),
          FloatingActionButton(
            onPressed: () {
              provider.incrementValu();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () async {
              final time = await showDatePicker(
                  context: context, initialDate: provider.time, firstDate: DateTime(2000), lastDate: DateTime(3000));
              if (time != null) {
                provider.timeDate(time);
              }
            },
            child: Icon(Icons.date_range),
          ),
        ],
      ),
      appBar: AppBar(title: Text("Provider"), actions: []),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          height: 400,
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              final item = provider.items[index];
              return Container(
                  height: 80,
                  child: Card(
                    elevation: 2,
                    color: Colors.white,
                    child: ListTile(
                      title: Text(item.name),
                      subtitle: Text(item.subname),
                      trailing: Consumer<CommonCalss>(
                        builder: (context, value, child) {
                          return Wrap(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        value.favriatItems(index);
                                      },
                                      icon: Icon(
                                        item.isFavorite ? Icons.favorite : Icons.favorite_outline,
                                        color: item.isFavorite ? Colors.red : Colors.blue,
                                      )),
                                  Text(item.isFavorite == false ? "0" : "1"),
                                ],
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ));
            },
          ),
        ),
        Consumer<CommonCalss>(
          builder: (context, value, child) => Center(child: Text('${provider.time.day}-->Count :- ${provider.count}')),
        ),

        /// materialButton(),
      ]),
    );
  }
}

///CoustemWidgets
Widget materialButton() {
  return ElevatedButton(
    onPressed: () {},
    child: Text("Submit"),
  );
}
