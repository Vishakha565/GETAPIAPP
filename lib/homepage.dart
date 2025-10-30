import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Container(
          height: 120,
          color: Colors.amberAccent,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.all(10),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "userid: id",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Name: name",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "title: title",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "id: id",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        );
      },
    );
  }
}

Future<List?> getdataapi() async {
  var data = Uri.parse("https");
}
