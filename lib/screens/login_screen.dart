import 'package:authentication/screens/signup_screen.dart';
import 'package:authentication/widgets/buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../services/firebase_auth_methods.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  void loginuser() {
    FirebaseAuthMethods(FirebaseAuth.instance).loginWithEmail(
        email: _emailcontroller.text,
        password: _passwordcontroller.text,
        context: context);
  }

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[900],
                  fontSize: 50),
            ),
            SizedBox(height: 40),
            CustomTextField(
                label: 'E-mail', controller: _emailcontroller, hide: false),
            SizedBox(height: 10),
            CustomTextField(
                label: 'Password', controller: _passwordcontroller, hide: true),
            SizedBox(height: 30),

            //! Login Button
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orange[900])),
              onPressed: loginuser,
              child: Text(
                'Login',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(height: 50),
            TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (builder) => SignUpPage()));
                  });
                },
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
