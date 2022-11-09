import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_text_field.dart';
import 'package:greengrocer/src/auth/components/sign_up_screen.dart';
import 'package:greengrocer/src/config/custom_theme.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.secondary,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://s3.us-west-2.amazonaws.com/secure.notion-static.com/45615963-64a0-48ad-9f93-9353417ce1ef/logo-no-bg.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221109%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221109T013416Z&X-Amz-Expires=86400&X-Amz-Signature=cb6789289438b1d97ec1c361d92410e2e023441412343a991405f03e6ad63115&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22logo-no-bg.png%22&x-id=GetObject',
                ),
              ],
            ),
          ),

          //Form
          Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 40,
              ),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Email input
                  const CustomTextField(
                    icon: Icons.email,
                    label: 'Email',
                    isSecret: false,
                  ),

                  // Password input
                  const CustomTextField(
                    icon: Icons.lock,
                    label: 'Password',
                    isSecret: true,
                  ),

                  // Login button
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
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

                  // Forgot password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: CustomTheme.details,
                        ),
                      ),
                    ),
                  ),

                  // Divisor
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: CustomTheme.details,
                            thickness: 2,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Or'),
                        ),
                        Expanded(
                          child: Divider(
                            color: CustomTheme.details,
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // New user Button
                  SizedBox(
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side: BorderSide(
                            width: 2,
                            color: CustomTheme.primary,
                          )),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (c) {
                              return SignUpScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        'Create account',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
