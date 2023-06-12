import 'package:chat_app/src/core/entities/user.dart';
import 'package:chat_app/src/core/errors/exceptions.dart';
import 'package:chat_app/src/core/errors/failures.dart';
import 'package:chat_app/src/core/usecases/usecase.dart';
import 'package:chat_app/src/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:chat_app/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  Future<Either<Failures, User>> login(LoginParams params) async {
    return await _OnBodyCall<User>()(
      () => authRemoteDataSource.login(params),
    );
  }

  @override
  Future<Either<Failures, bool>> logout() async{
    return await _OnBodyCall<bool>()(
        ()=> authRemoteDataSource.logout(),
    );
  }

  @override
  Future<Either<Failures, User>> registration(RegistrationParams params) async{
    return await _OnBodyCall<User>()(
        ()=> authRemoteDataSource.registration(params),
    );
  }
}

class _OnBodyCall<T> {
  Future<Either<Failures, T>> call(Function() callable) async {
    try {
      final remoteData = await callable();
      return right(remoteData);
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.message));
    }
  }
}
