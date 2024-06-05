import 'package:flutter/material.dart';


class ProjectDetail extends StatelessWidget {
  final String projectname;
  final String description;

  ProjectDetail({required this.projectname, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(projectname),
        elevation: 1,
      ),
      body: Text(description)
    );
  }
}
