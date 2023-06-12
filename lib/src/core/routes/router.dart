import 'package:chat_app/src/features/auth/presentation/pages/login/login_page.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/pages/registration/registration_page.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginPage.routeName:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );

      case RegistrationPage.routeName:
        return MaterialPageRoute(
          builder: (_) => const RegistrationPage(),
        );


      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Error'),
            ),
            body: const Center(
              child: Text('Something went wrong'),
            ),
          ),
        );
    }
  }
}
