import 'package:flutter/material.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final passController = TextEditingController();
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Forgot Password?',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(61, 153, 112, 100))),
          const Text(
            "Don't worry! It occurs. Please enter the email address linked with your account.",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(131, 145, 161, 100)),
          ),
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: passController,
              decoration: InputDecoration(
                  labelText: "Enter your email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(232, 236, 244, 100))),
                  fillColor: const Color.fromRGBO(247, 248, 249, 100),
                  filled: true)),
          const SizedBox(
            height: 39,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 56,
              width: 331,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(61, 153, 112, 100),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Send Code',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 39,
          )
        ],
      ),
    ));
  }
}
