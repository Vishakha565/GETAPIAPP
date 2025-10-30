import 'package:flutter/material.dart';

class Formpage extends StatefulWidget {
  const Formpage({super.key});

  @override
  State<Formpage> createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value!.isEmpty || value == null) {
                  return 'enter value enter';
                }
                return null;
              },
            ),
            TextFormField(validator: (value) {
              if (value!.isEmpty || value == null) {
                return 'enter vaild value';
              }
              return null;
            }),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formkey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: Text("submit"))
          ],
        ));
  }
}
