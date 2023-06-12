import 'package:chat_app/src/features/auth/presentation/pages/registration/registration_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/form_field_with_label.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = '/';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              FormFieldWithLabel(
                labelText: 'Email Address',
                iconData: Icons.email,
              ),
              FormFieldWithLabel(
                labelText: 'Password',
                iconData: Icons.lock,
                isPassword: true,
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Haven\'t account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegistrationPage.routeName);
                    },
                    child: const Text('Create Account'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
