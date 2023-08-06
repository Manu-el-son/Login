import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showLoginButton = true;
  void _toggleButtons() {
    setState(() {
      _showLoginButton = !_showLoginButton;
    });
  }

  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(61, 153, 112, 100),
        toolbarHeight: 117,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        actions: [
          _showLoginButton
              ? InkWell(
                  onTap: () {
                    // Handle login button press
                  },
                  child: const Text('Login'),
                )
              : ElevatedButton(
                  onPressed: () {
                    // Handle sign-up button press
                  },
                  child: const Text('Sign Up'),
                ),
          IconButton(
            onPressed: () {
              _toggleButtons();
            },
            icon: const Icon(Icons.swap_horiz),
          ),
        ],
      ),
    );
  }
}
