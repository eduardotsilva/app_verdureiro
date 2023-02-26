import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:verdureiro/src/auth/components/custom_text_field.dart';

import '../config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Nome do app
                Text.rich(
                  TextSpan(
                    style: const TextStyle(
                      fontSize: 40,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Green',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'grocer',
                        style:
                            TextStyle(color: CustomColors.customConstrantColor),
                      ),
                    ],
                  ),
                ),

                //Categorias abaixo nome do app
                SizedBox(
                  height: 30,
                  child: DefaultTextStyle(
                    style: const TextStyle(fontSize: 25),
                    child: AnimatedTextKit(
                      pause: Duration.zero,
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('Frutas'),
                        FadeAnimatedText('Verduras'),
                        FadeAnimatedText('Carnes'),
                        FadeAnimatedText('Laticíneos'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          //Formulario
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //email
                const CustomTextField(icon: Icons.email, label: 'Email'),

                //senha
                const CustomTextField(
                    icon: Icons.lock, label: 'Senha', isSecret: true),

                //botao de entrar
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
                      'Entrar',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),

                //Esqueceu a senha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Esqueceu a senha?',
                      style:
                          TextStyle(color: CustomColors.customConstrantColor),
                    ),
                  ),
                ),

                //Divisor
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text('Ou'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
                      ),
                    ],
                  ),
                ),

                //Botao de Novo usuario
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 2, color: Colors.green),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Criar Conta',
                        style: TextStyle(fontSize: 18)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
