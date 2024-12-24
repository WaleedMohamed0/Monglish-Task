import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String? name;
  final String? email;
  final String? mobile;
  final String? gender;
  final String? token;
  final String? code;

  LoginResponse({
    this.name,
    this.email,
    this.mobile,
    this.gender,
    this.token,
    this.code,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json["data"]);
}
