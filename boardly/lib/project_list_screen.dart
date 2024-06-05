import 'package:flutter/material.dart';
import 'package:boardly/home_screen.dart';

class ProjectListScreen extends StatelessWidget {
  final String title;
  final List<String> tasks;

  ProjectListScreen({required this.title, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
          );
        },
      ),
    );
  }
}
