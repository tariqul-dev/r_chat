import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

class Logout implements UseCase<bool, NoParams> {
  final AuthRepository authRepository;

  Logout({required this.authRepository});

  @override
  Future<Either<Failures, bool>> call(NoParams params) async {
    return await authRepository.logout();
  }
}
