import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Task {
  String title;
  String assignee;
  DateTime dateTime;
  bool isCompleted;
  Task(this.title, this.assignee, this.dateTime, this.isCompleted);
}

class task_screen extends StatefulWidget {
  const task_screen({Key? key}) : super(key: key);

  @override
  State<task_screen> createState() => _task_screenState();
}

class _task_screenState extends State<task_screen> {
  List<Task> tasks = [
    Task('Complete the ui ', 'John Doe', DateTime(2023, 07, 25, 10, 30), true),
    Task('Complete the backnd ', 'Jane Smith', DateTime(2023, 07, 26, 14, 15),
        false),
    Task('Test the project ', 'Bob Johnson', DateTime(2023, 07, 27, 09, 00),
        false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Your Tasks', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Open the side drawer or handle the menu action
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            Task task = tasks[index];
            return Expanded(
              child: Container(
                margin: EdgeInsets.all(6),
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            side: MaterialStateBorderSide.resolveWith(
                              (states) =>
                                  BorderSide(width: 1.0, color: Colors.blue),
                            ),
                            value: task.isCompleted,
                            onChanged: (val) {
                              setState(() {
                                task.isCompleted = val!;
                              });
                            }),
                        Text(
                          task.title.toUpperCase(), // Convert to uppercase
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24, // Increase font size of the title
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 20), // Add spacing between title and assignee
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 4),
                              Text(
                                'Assigned by:'
                                    .toUpperCase(), // Convert to uppercase
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                task.assignee
                                    .toUpperCase(), // Convert to uppercase
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(width: 4),
                              Text(
                                DateFormat('dd-MM-yyyy')
                                    .format(task.dateTime)
                                    .toUpperCase(),
                                // Format dateTime to display just the date
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                DateFormat('KK:mm ')
                                    .format(task.dateTime)
                                    .toUpperCase(),
                                // Format dateTime to display just the date
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
