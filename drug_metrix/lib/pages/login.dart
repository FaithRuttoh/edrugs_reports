import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  AuthenticationScreenState createState() => AuthenticationScreenState();
}

class AuthenticationScreenState extends State<AuthenticationScreen> {
  final _auth = FirebaseAuth.instance; // Firebase authentication instance
  String email = ''; // Stores user's email
  String password = ''; // Stores user's password

  // Function to handle user sign-in
  void signIn() async {
    try {
      // Signs in the user with email and password
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      // On success, navigate to the main screen or dashboard
      ("Sign-in successful"); // Placeholder for actual navigation
    } on FirebaseAuthException catch (e) {
      // Specific FirebaseAuthException handling for better error messages
      ("Error: ${e.message}");
    } catch (e) {
      // General error handler for any other errors
      ("Unexpected error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")), // App bar with title
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input field for email
            TextField(
              onChanged: (value) => email = value,
              decoration:const InputDecoration(labelText: 'Email'),
            ),
            // Input field for password
            TextField(
              onChanged: (value) => password = value,
              decoration:const InputDecoration(labelText: 'Password'),
              obscureText: true, // Hides password input
            ),
            // Button to trigger sign-in function
            ElevatedButton(onPressed: signIn, child:const Text("Sign In")),
          ],
        ),
      ),
    );
  }
}