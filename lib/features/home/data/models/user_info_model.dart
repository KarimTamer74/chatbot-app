import 'dart:io';

class UserInfoModel {
  final String email, firstName, lastName,gender;
  final File? userImage;


  UserInfoModel(
      {required this.gender,
      required this.lastName,
      required this.email,
      required this.firstName,
      required this.userImage});
}
