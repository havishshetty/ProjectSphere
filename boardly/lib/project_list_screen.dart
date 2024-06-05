import 'package:flutter/material.dart';
import 'package:boardly/project_detail.dart';

class ProjectListScreen extends StatelessWidget {
  final String title;
  final List<String> tasks;

  ProjectListScreen({required this.title, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 1,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProjectDetail(
                          projectname: tasks[index],
                          description: title + " description.")));
            },
            child: ListTile(
              title: Card(
                  child: Text(
                tasks[index],
                style: TextStyle(fontSize: 30),
              )),
            ),
          );
        },
      ),
    );
  }
}
