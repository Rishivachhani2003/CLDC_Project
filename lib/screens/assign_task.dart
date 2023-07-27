import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(33, 36, 40, 1.000),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 48, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Assign Task",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _openDrawer(context);
                      // Handle the menu button press here
                      // For example, show a drawer or navigate to a menu screen
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Enter ID:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: const Color.fromRGBO(25, 27, 30, 1.000),
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Add Task:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: const Color.fromRGBO(25, 27, 30, 1.000),
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Deadline:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Date",
                        hintStyle: TextStyle(
                            color: const Color.fromRGBO(135, 142, 153, 1.000)),
                        fillColor: const Color.fromRGBO(25, 27, 30, 1.000),
                        filled: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: TextField(
                      style: TextStyle(
                          color: const Color.fromRGBO(135, 142, 153, 1.000)),
                      decoration: InputDecoration(
                        hintText: "Time",
                        hintStyle: TextStyle(
                            color: const Color.fromRGBO(135, 142, 153, 1.000)),
                        fillColor: const Color.fromRGBO(25, 27, 30, 1.000),
                        filled: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 41),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implement the functionality for the "Done" button here
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Button color
                  onPrimary: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 16),
                ),
                child: Text(
                  "Done",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// Function to open the custom drawer
void _openDrawer(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Container(
        height: 200, // Set the desired height of the drawer
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(33, 36, 40, 1.000),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            // Add the "Assign Task" option
            ListTile(
              title: Text(
                "Assign Task",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Implement the functionality for "Assign Task" here
                // For example, you can navigate to another screen
                Navigator.pop(context); // Close the drawer
              },
            ),
            // Add the line between the options
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            // Add the "Your Task" option
            ListTile(
              title: Text(
                "Your Task",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Implement the functionality for "Your Task" here
                // For example, you can navigate to another screen
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      );
    },
  );
}
