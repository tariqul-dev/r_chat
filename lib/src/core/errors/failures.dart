import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable{
  final String message;

  const Failures(this.message);

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failures{
  const ServerFailure({required String message}): super(message);
}

class CacheFailure extends Failures{
  const CacheFailure({required String message}): super(message);
}