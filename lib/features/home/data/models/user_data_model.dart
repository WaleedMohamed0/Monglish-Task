import 'package:json_annotation/json_annotation.dart';

part 'user_data_model.g.dart';

@JsonSerializable()
class UserDataModel {
  final int id;
  final String? name;
  final String? email;
  final String? mobile;
  final String? gender;
  final String? code;

  const UserDataModel({
    this.id = 0,
    this.name = 'Nameadsads',
    this.email = 'asda@gmail.com',
    this.mobile = '0120250550',
    this.gender = 'Male',
    this.code = '21312312',
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json["data"]);
}
