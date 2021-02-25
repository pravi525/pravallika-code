import 'package:firebase_database/firebase_database.dart';

class User {
  String key;
  String name;
  String password;
  String mobile;

  User(this.name, this.password, this.mobile);
  // User( this._name, this._password, this._mobile, {name});
  // static Future<String> getInstance() async{
  //
  //   return user;
  // }
  //
  // String get id => _id;
  //
  // String get name => _name;
  //
  // String get password => _password;
  //
  // String get mobile => _mobile;

  // User.fromSnapshot(DataSnapshot snapshot) {
  //   _id = snapshot.key;
  //   _name = snapshot.value['name'];
  //   _password = snapshot.value['password'];
  //   _mobile = snapshot.value['mobile'];
  // }

  // factory User.fromJson(Map<String, dynamic> json) {
  //   return User(
  //     name: json['name'],
  //     password: json['password'],
  //     mobile: json['mobile'],
  //   );
  // }

  User.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
        name = snapshot.value['name'],
        password = snapshot.value['password'],
        mobile = snapshot.value['mobile'];

  toJson() {
    return {
      "name": name,
      "password": password,
      "mobile": mobile,
    };
  }

  static indexOf(Event old) {}
}
