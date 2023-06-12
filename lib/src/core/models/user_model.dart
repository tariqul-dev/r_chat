import '../entities/user.dart';

class UserModel extends User {
  const UserModel({
    required String id,
    required String name,
    required String email,
    required String image,
    required String password,
    required bool isOnline,
    required String createdAt,
    required String updatedAt,
  }) : super(
          id: id,
          name: name,
          email: email,
          image: image,
          password: password,
          isOnline: isOnline,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory UserModel.fromJson(dynamic json) {
    return UserModel(
      id: json['_id'],
      name: json['name'],
      email: json['email'],
      image: json['image'],
      password: json['password'],
      isOnline: json['isOnline'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? image,
    String? password,
    bool? isOnline,
    String? createdAt,
    String? updatedAt,
    num? v,
  }) =>
      UserModel(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        image: image ?? this.image,
        password: password ?? this.password,
        isOnline: isOnline ?? this.isOnline,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['image'] = image;
    map['password'] = password;
    map['isOnline'] = isOnline;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }
}
