import 'package:flutter/cupertino.dart';

class UserModel {
  static const List<AssetImage> avatars=[
    AssetImage('assets/images/avatar_1.png',),
    AssetImage('assets/images/avatar_2.png',),
    AssetImage('assets/images/avatar_3.png',),
    AssetImage('assets/images/avatar_4.png',),
    AssetImage('assets/images/avatar_5.png',),
    AssetImage('assets/images/avatar_6.png',),
    AssetImage('assets/images/avatar_7.png',),
    AssetImage('assets/images/avatar_8.png',),
    AssetImage('assets/images/avatar_9.png',),
  ];
  String name;
  int avatar;
  String email;
  UserModel({required this.name,required this.email, required this.avatar});
}