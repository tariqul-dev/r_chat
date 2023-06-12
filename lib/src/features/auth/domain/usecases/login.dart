import 'package:dartz/dartz.dart';

import '../../../../core/entities/user.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

class Login implements UseCase<User, LoginParams> {
  final AuthRepository authRepository;

  Login({required this.authRepository});

  @override
  Future<Either<Failures, User>> call(LoginParams params) async {
    return authRepository.login(params);
  }
}
