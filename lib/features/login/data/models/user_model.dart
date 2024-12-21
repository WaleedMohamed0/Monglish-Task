class UserModel {
  final String? name;
  final String? email;
  final String? mobile;
  final String? gender;
  final String? token;
  final String? code;

  UserModel.fromJson(Map<String, dynamic> json)
      : name = json['data']['name'],
        email = json['data']['email'],
        mobile = json['data']['mobile'],
        gender = json['data']['gender'],
        token = json['token'],
        code = json['data']['code'];
}
