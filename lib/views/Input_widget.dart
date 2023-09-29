import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController name1 = TextEditingController();
  final List<String> _options = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Fig',
    'Grape',
    'Kiwi',
    'Lemon',
    'Mango',
    'Orange',
    'Peach',
    'Pear',
    'Pineapple',
    'Plum',
    'Strawberry',
    'Watermelon',
  ];

  String _pressedKeys = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          backgroundColor: Colors.amber,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text("Input Widget"),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Autocomplete(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  return _options.where(
                    (String option) => option.toLowerCase().contains(
                          textEditingValue.text.toLowerCase(),
                        ),
                  );
                },
                onSelected: (String selectedOption) {
                  setState(() {
                  });
                },
                fieldViewBuilder: (BuildContext context, TextEditingController textEditingController,
                    FocusNode focusNode, VoidCallback onFieldSubmitted) {
                  return TextField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    onSubmitted: (String value) {
                      onFieldSubmitted();
                    },
                    decoration: InputDecoration(
                      labelText: 'Select a fruit',
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Process data.
                    }
                  },
                  child: Text("Submit")),
              RawKeyboardListener(
                focusNode: FocusNode(),
                onKey: (RawKeyEvent event) {
                  setState(() {
                    _pressedKeys = event.data.keyLabel;
                  });
                },
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Pressed Keys: $_pressedKeys',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              DefaultTextStyle.merge(
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                child: const Center(
                  child: Text('Flutter'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    children: [
                      TextSpan(text: "Hellow"),
                      TextSpan(text: "moon", style: TextStyle(color: Colors.red)),
                      TextSpan(text: "good"),
                    ]),
              )
            ],
          ),
        ));
  }
}
