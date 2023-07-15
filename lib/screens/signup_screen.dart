import 'package:authentication/screens/login_screen.dart';
import 'package:authentication/services/firebase_auth_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/buttons.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  void signupuser() async {
    FirebaseAuthMethods(FirebaseAuth.instance).signUpWithEmail(
      email: _emailcontroller.text,
      password: _passwordcontroller.text,
      context: context,
    );
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
              'Register',
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

            //! SignUp Button
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orange[900])),
              onPressed: signupuser,
              child: Text(
                'SignUp',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(height: 50),
            TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (builder) => LoginPage()));
                  });
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
