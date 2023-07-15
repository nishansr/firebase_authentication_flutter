import 'package:authentication/utils/show_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthMethods {
  FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);

  //! Sign Up with email
  Future<void> signUpWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await sendEmailVerfication(context);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  //! Email Login
  Future<void> loginWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      if (!_auth.currentUser!.emailVerified) {
        await sendEmailVerfication(context);
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

//! Send Verification
  Future<void> sendEmailVerfication(BuildContext context) async {
    try {
      _auth.currentUser!.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, 'Email Verification Sent!!');
    }
  }
}
