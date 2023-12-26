import 'package:flutter/cupertino.dart';

class User {
  User(
      {required this.firstName,
      required this.lastName,
      required this.password,
      required this.birthDate});

  final String firstName;
  final String lastName;
  final String password;
  final String birthDate;

}
