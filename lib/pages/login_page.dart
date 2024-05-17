import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:x_clone/components/my_button.dart';
import 'package:x_clone/components/my_text_field.dart';

class LoginPage extends StatelessWidget {

  final void Function()? onTap;

  LoginPage({super.key,
  required this.onTap});

  // Text controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              const Icon(
                Icons.person,
                size: 80,
                color: CupertinoColors.white,
              ),

              // App name
              const Text(
                "T H E  W A L L",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              // Email
              MyTextField(
                controller: emailController,
                obscureText: false,
                hintText: "Email",
                hintTextColor: Colors.grey, // Change hint text color here
              ),
              const SizedBox(height: 10),
              // Password
              MyTextField(
                controller: passwordController,
                obscureText: true,
                hintText: "Password",
                hintTextColor: Colors.grey, // Change hint text color here
              ),
              const SizedBox(height: 15,),
              // Forgot password
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password?", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
              const SizedBox(height: 15,),
              // Signin method
              MyButton(text: "Login", onTap: onTap,
              ),

              const SizedBox( height: 10),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text("Register here", style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
