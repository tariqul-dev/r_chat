import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    required this.password,
    required this.isOnline,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String name;
  final String email;
  final String image;
  final String password;
  final bool isOnline;
  final String createdAt;
  final String updatedAt;

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        image,
        password,
        isOnline,
        createdAt,
        updatedAt,
      ];
}
