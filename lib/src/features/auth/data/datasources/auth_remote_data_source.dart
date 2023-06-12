import 'dart:io';

import '../../../../core/models/user_model.dart';
import '../../domain/repositories/auth_repository.dart';

abstract class AuthRemoteDataSource {
  /// Return [UserModel]
  /// Throws [ServerException]
  Future<UserModel?> login(LoginParams params);

  /// Return [bool]
  /// Throws [ServerException]
  Future<bool?> logout();

  /// Return [UserModel]
  /// Throws [ServerException]
  Future<UserModel?> registration(RegistrationParams params);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource{
  final HttpClient httpClient;

  AuthRemoteDataSourceImpl({required this.httpClient});
  
  @override
  Future<UserModel?> login(LoginParams params) {

    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<bool?> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<UserModel?> registration(RegistrationParams params) {
    // TODO: implement registration
    throw UnimplementedError();
  }
  
}

