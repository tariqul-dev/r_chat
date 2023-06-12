import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/entities/user.dart';
import '../../../../core/errors/failures.dart';

abstract class AuthRepository {
  Future<Either<Failures, User>> registration(RegistrationParams params);
  Future<Either<Failures, User>> login(LoginParams params);
  Future<Either<Failures, bool>> logout();
}

class RegistrationParams extends Equatable {
  final String name;
  final String email;
  final String password;
  final String image;

  const RegistrationParams({
    required this.name,
    required this.email,
    required this.password,
    required this.image,
  });

  @override
  List<Object?> get props => [
        name,
        email,
        password,
        image,
      ];
}
class LoginParams extends Equatable {
  const LoginParams({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  List<Object?> get props => [
    email,
    password,
  ];
}
