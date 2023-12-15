class logIn_State {
  String email;
  String password;

  logIn_State({this.email = '', this.password = ''});

  logIn_State copyWith({String? email, String? password}) {
    return logIn_State(
        email: email ?? this.email, password: password ?? this.password);
  }
}
