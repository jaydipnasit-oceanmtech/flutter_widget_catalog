import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/common_button.dart';

class FormValidations extends StatefulWidget {
  const FormValidations({super.key});

  @override
  State<FormValidations> createState() => _FormValidationsState();
}

class _FormValidationsState extends State<FormValidations> {
  final goble = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormValidations"),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: goble,
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Common(
              color: Colors.white,
              valide: (value) {
                bool emailValid =
                    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                if (emailValid) {
                  return null;
                } else {
                  return "Please enter valide email";
                }
              },
              ontap: () {
                goble.currentState!.validate();
              },
              hint: "Email",
              perfi: Icon(Icons.email),
            ),
            SizedBox(
              height: 20,
            ),
            Common(
              color: Colors.white,
              valide: (value) {
                bool password =
                    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value!);
                if (password) {
                  return null;
                } else {
                  return "Please enter valide password";
                }
              },
              ontap: () {
                goble.currentState!.validate();
              },
              hint: "Password",
              perfi: Icon(Icons.password),
            ),
            SizedBox(
              height: 20,
            ),
            Button(
              ontap: () {
                if (goble.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Done")));
                }
              },
              color: Colors.green,
              child: Text("Submit"),
            )
          ]),
        ),
      ),
    );
  }
}
