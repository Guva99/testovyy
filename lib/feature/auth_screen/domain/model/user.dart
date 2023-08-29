part of 'entities.dart';

@JsonSerializable()
class UserClass {
  UserClass({
      this.user,
      this.token,
      this.type,
      this.message,
  });

  final User? user;
  final String? token;
  final String? type;
  final String? message;

  factory UserClass.fromJson(Map<String, dynamic> json) => _$UserClassFromJson(json);
}

@JsonSerializable()
class User {
  final int id;

  User({
    required this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
