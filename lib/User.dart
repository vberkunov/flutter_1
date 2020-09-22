import 'package:flutter/cupertino.dart';

class User{
  String username;
  String password;
  String name;
  String phoneNumber;

  //default constructor
  User({ this.username, this.password, this.name, this.phoneNumber});

  //named constructor
  User.fromMap(Map<String, String> userMap){
    this.username = userMap['username'];
    this.password = userMap['password'];
    this.name = userMap['name'];
    this.phoneNumber = userMap['phoneNumber'];
  }

  //factory constructor with cascade operator

  factory User.build(){
    return User()
        ..name = 'Anatoliy'
        ..username = 'anatoliy2305'
        ..password = '12242'
        ..phoneNumber = ' ';
  }

  String get userPhoneNumber => phoneNumber;
  String get nameOfUser => name;

  set newPhoneNumber(String num) => phoneNumber = num;


  String showInfo() => 'Name: $name Phone number : $phoneNumber';




}