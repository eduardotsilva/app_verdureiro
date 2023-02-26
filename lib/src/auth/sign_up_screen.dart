import 'package:flutter/material.dart';
import 'package:verdureiro/src/auth/components/custom_text_field.dart';
import 'package:verdureiro/src/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    'Cadastro',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTextField(
                      icon: Icons.email,
                      label: 'Email',
                    ),
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),
                    const CustomTextField(
                      icon: Icons.person,
                      label: 'Nome',
                    ),
                    const CustomTextField(
                      icon: Icons.phone,
                      label: 'Celular',
                    ),
                    const CustomTextField(
                      icon: Icons.file_copy,
                      label: 'CPF',
                    ),
                    SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Cadastrar Usuário',
                            style: TextStyle(fontSize: 18),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
