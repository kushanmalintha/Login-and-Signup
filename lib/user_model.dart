class User {
  int _id;
  String _username;
  String _email;
  String _password;

  User(
      {required int id,
      required String username,
      required String email,
      required String password})
      : _id = id,
        _username = username,
        _email = email,
        _password = password;

  int get id => _id;
  String get username => _username;
  String get email => _email;
  String get password => _password;

  set username(String username) {
    _username = username;
  }

  set email(String email) {
    _email = email;
  }

  set password(String password) {
    _password = password;
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'username': _username,
      'email': _email,
      'password': _password,
    };
  }
}
