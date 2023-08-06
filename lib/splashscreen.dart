import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/signup.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/a.jpg'), fit: BoxFit.cover),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: Container(
                  height: 56,
                  width: 331,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(61, 153, 112, 100),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Container(
                  height: 56,
                  width: 331,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: const Color.fromRGBO(61, 153, 112, 100),
                          width: 1)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log In',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
