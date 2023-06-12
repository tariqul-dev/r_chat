import 'package:dartz/dartz.dart';

import '../../../../core/entities/user.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

class Registration implements UseCase<User, RegistrationParams> {
  final AuthRepository authRepository;

  Registration({required this.authRepository});

  @override
  Future<Either<Failures, User>> call(RegistrationParams params) async {
    return authRepository.registration(params);
  }
}
