class User {
  int id;
  String username;
  String email;
  String password;
  int sodu;
  int diem;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.diem,
    required this.sodu,
  });
  User.formJson(Map<String, dynamic> json)
      : id = json['id'],
        username = json['username'],
        email = json['email'],
        password = json['password'],
        diem = json['diem'],
        sodu = json['sodu'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'email': email,
        'password': password,
        'diem': diem,
        'sodu': sodu,
      };
}
