import 'package:flutter/material.dart';

class AbiScreen extends StatefulWidget {
  const AbiScreen({super.key});

  @override
  State<AbiScreen> createState() => _AbiScreenState();
}

class _AbiScreenState extends State<AbiScreen> {
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView.builder")),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item $index"));
          }),
    );
  }
}