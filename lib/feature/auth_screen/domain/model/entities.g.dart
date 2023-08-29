// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Code _$CodeFromJson(Map<String, dynamic> json) => Code(
      code: json['code'] as int,
    );

Map<String, dynamic> _$CodeToJson(Code instance) => <String, dynamic>{
      'code': instance.code,
    };

UserClass _$UserClassFromJson(Map<String, dynamic> json) => UserClass(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
      type: json['type'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UserClassToJson(UserClass instance) => <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'type': instance.type,
      'message': instance.message,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
    };
