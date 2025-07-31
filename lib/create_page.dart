import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Text('This is your Dashboard', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}