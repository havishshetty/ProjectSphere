import 'package:flutter/material.dart';
import 'package:boardly/project_list_screen.dart';

class HomeScreen extends StatelessWidget {
  final int dueTodayCount = 3;
  final int overdueCount = 2;
  final int toBeCompletedCount = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Sphere'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProjectListScreen(
                                  title: "hello", tasks: ["tasjs", "shbsjd"])));
                    },
                    child: ProjectCard(
                      title: 'Due Today',
                      projectCount: dueTodayCount,
                      cardColor: Colors.green,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProjectListScreen(
                                  title: "hello", tasks: ["tasjs", "shbsjd"])));
                    },
                    child: ProjectCard(
                      title: 'Overdue',
                      projectCount: overdueCount,
                      cardColor: Colors.red,
                    ),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            Container(
              width: 400,
              height: 150,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProjectListScreen(
                              title: "To be Completed",
                              tasks: ["tasjs", "shbsjd"])));
                },
                child: ProjectCard(
                  title: 'Projects to be Completed',
                  projectCount: toBeCompletedCount,
                  cardColor: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final int projectCount;
  final Color cardColor;

  ProjectCard({
    required this.title,
    required this.projectCount,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              '$projectCount',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
