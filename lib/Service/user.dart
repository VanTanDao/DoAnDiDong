class User {
  final int id;
  final String username;
  final String email;
  final int sodu;
  final int diem;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.diem,
    required this.sodu,
  });
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        username = json['username'],
        email = json['email'],
        diem = json['diem'],
        sodu = json['sodu'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'email': email,
        'diem': diem,
        'sodu': sodu,
      };
}
