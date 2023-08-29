part of 'entities.dart';

@JsonSerializable()
class Code {
  Code({
    required this.code,
  });

  final int code;

  factory Code.fromJson(Map<String, dynamic> json) => _$CodeFromJson(json);
}
