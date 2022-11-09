import 'package:flutter/material.dart';

import '../../config/custom_theme.dart';
import 'custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomTheme.secondary,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              // Text
              Expanded(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: CustomTheme.primary,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    Image.network(
                      'https://s3.us-west-2.amazonaws.com/secure.notion-static.com/47e50095-b7e5-4cea-b901-9cd4034b8a7d/logo-menor.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221109%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221109T015831Z&X-Amz-Expires=86400&X-Amz-Signature=c57af6cb2dbc86ec6af184d4713142fe87474ebfa4d562bddb97301d5ff2b6fa&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22logo-menor.png%22&x-id=GetObject',
                    ),
                  ],
                ),
              ),

              // Form
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
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
                      label: 'Password',
                      isSecret: true,
                    ),
                    const CustomTextField(
                      icon: Icons.person,
                      label: 'Name',
                    ),
                    const CustomTextField(
                      icon: Icons.phone,
                      label: 'Phone',
                    ),
                    const CustomTextField(
                      icon: Icons.file_copy,
                      label: 'Document',
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
                          'Sign up',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
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
