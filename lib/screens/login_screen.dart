//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900]!,
              Colors.orange[800]!,
              Colors.orange[400]!,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(children: [
                      SizedBox(height: 60),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, 0.3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: [
                            //! Username Input
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[200]!)),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none),
                              ),
                            ),

                            //! Password Input
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[200]!)),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Text("Forgot Password?",
                          style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 40),
                      Container(
                        height: 50,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange[900],
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Text(
                        "Continue with social media",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          //! Facebook
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                              child: Center(
                                child: Text(
                                  "Facebook",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 30),

                          //! Github
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text(
                                  "Github",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
