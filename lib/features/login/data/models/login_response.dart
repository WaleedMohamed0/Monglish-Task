import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

readId(Map json,_) => json['data']['id'];
@JsonSerializable()
class LoginResponse {

  @JsonKey(readValue: readId)
  final int id;
  final String token;

 const LoginResponse({required this.id, required this.token});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

// @JsonSerializable()
// class UserData {
//   final String? name;
//   final String? email;
//   final String? mobile;
//   final String? gender;
//   final String? code;
//   final int? id;
//
//   UserData(
//       {this.id, this.name, this.email, this.mobile, this.gender, this.code});
//
//   factory UserData.fromJson(Map<String, dynamic> json) =>
//       _$UserDataFromJson(json);
// }
