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
  bool passToggle = true;
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  style: const TextStyle(fontFamily: 'Urbanist'),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(232, 236, 244, 100))),
                      fillColor: const Color.fromRGBO(247, 248, 249, 100),
                      filled: true)),
              const SizedBox(height: 17),
              TextFormField(
                  style: const TextStyle(fontFamily: 'Urbanist'),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: passToggle,
                  controller: passController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(232, 236, 244, 100))),
                    fillColor: const Color.fromRGBO(247, 248, 249, 100),
                    filled: true,
                  ))
            ],
          ),
        ));
  }
}
