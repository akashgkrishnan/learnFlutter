import 'package:flutter/material.dart';
import 'dart';

class UserModel with ChangeNotifier {
  final String name;
  final String id;
  final String username;
  final int mobilenumber;

  UserModel(this.name, this.id, this.username, this.mobilenumber);
  
  String get firstName {
    return this.name;
  }

  String get userId {
    return this.id;
  }

  String get userName {
    return this.username;
  }

  String get userMobile {
    return this.mobilenumber;
  }
}
