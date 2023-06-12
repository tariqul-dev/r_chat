import 'package:chat_app/src/features/auth/presentation/pages/login/login_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/form_field_with_label.dart';
import 'components/profile_image_avatar.dart';

class RegistrationPage extends StatelessWidget {
  static const String routeName = '/registration';

  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                child: ListView(
                  children: [
                    const ProfileImageAvatar(),
                    FormFieldWithLabel(
                      labelText: 'Full Name',
                      iconData: Icons.person,
                    ),
                    FormFieldWithLabel(
                      labelText: 'Email Address',
                      iconData: Icons.email,
                    ),
                    FormFieldWithLabel(
                      labelText: 'Password',
                      iconData: Icons.lock,
                      isPassword: true,
                    ),
                    FormFieldWithLabel(
                      labelText: 'Confirm Password',
                      iconData: Icons.lock,
                      isPassword: true,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Create Account'),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              LoginPage.routeName,
                              (route) => false,
                            );
                          },
                          child: const Text('Login'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
