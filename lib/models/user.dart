
enum Role {
  SPONSOR,
  FAN,
  ARTISTE
}


class User {
  final String firstname;
  final String lastname;
  final String username;
  final String email;
  final String password;
  final String phone;
  final String location;
  final String genre;
  final String avatar;
  final Role role;
  final int rank;

  User({
    this.firstname,
    this.lastname,
    this.username,
    this.email,
    this.password,
    this.phone,
    this.location,
    this.genre,
    this.avatar,
    this.role,
    this.rank
  });

  String get fullname => "$firstname $lastname";
  String get fullnameReversed => "$lastname $firstname";


  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'lastname': lastname,
      'username': username,
      'email': email,
      'password': password,
      'phone': phone,
      'location': location,
      'genre': genre,
      'avatar': avatar,
      'role': role
    };
  }
}

