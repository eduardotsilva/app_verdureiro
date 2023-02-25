import 'package:flutter/material.dart';
import 'package:verdureiro/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                children: const [
                  //email
                  CustomTextField(icon: Icons.email, label: 'Email'),
                  //senha
                  CustomTextField(
                      icon: Icons.lock, label: 'Senha', isSecret: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
