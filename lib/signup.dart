import 'package:flutter/material.dart';
import 'package:login/login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Login'),
                Tab(
                  text: 'Sign Up',
                )
              ],
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
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
                  )),
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
                    'Register',
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
