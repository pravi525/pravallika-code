import 'package:firebase_database/firebase_database.dart';

class FirebaseUserModel {
  String _deviceId;
  String get id => _deviceId;
  set deviceId(String deviceId) {
    _deviceId = deviceId;
  }

  String _deviceToken;
  String get deviceToken => _deviceToken;
  set deviceToken(String _deviceToken) {
    _deviceToken = deviceToken;
  }

  String _username;
  String get username => _username;
  set username(String username) {
    _username = username;
  }

  String _password;
  // ignore: unnecessary_getters_setters
  String get password => _password;
  set password(String password) {
    _password = password;
  }

  FirebaseUserModel() {
    /*Blank default constructor essential for Firebase*/
  }
}

