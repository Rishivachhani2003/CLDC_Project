import 'package:flutter/material.dart';
import 'package:cldc/screens/task_screen.dart';

class login_cldc extends StatefulWidget {
  const login_cldc({super.key});

  @override
  State<login_cldc> createState() => _login_cldc();
}

class _login_cldc extends State<login_cldc> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true; // Variable to control password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Container(
          constraints: BoxConstraints(
              maxWidth: 500), // Set maximum width for responsiveness
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/cldc_login.png',
                    width: 200,
                    fit: BoxFit.contain,
                    height: 200,
                  ),
                  // Replace 'assets/cldc_login.png' with the path to your company logo image
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Let's Work Together",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        color: Colors.white,
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: 'Enter Username',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        color: Colors.white,
                        child: TextField(
                          controller: passwordController,
                          obscureText:
                              _obscureText, // Set the password visibility
                          decoration: InputDecoration(
                              labelText: 'Enter Password',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline_rounded,
                                color: Colors.black,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Colors.black,
                                  // Set the color of the eye icon
                                ),
                              )),
                        ),
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 40),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 16),
                        ),
                        onPressed: () {
                          // Implement your login logic here
                          // Navigate to the task_screen when the login button is pressed
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  task_screen(), // Replace with the actual name of your task_screen widget
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor: Colors.blue),
                            ),

                            SizedBox(
                                width:
                                    10), // Add space between the text and arrow image
                            Image.asset(
                              'assets/right-arrow.png', // Replace with the path to your right arrow image
                              width: 20,
                              height: 20,
                              color: Colors
                                  .white, // Set the color of the arrow image
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
