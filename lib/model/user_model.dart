

class User {
   String? email;
   String? password;

  User({required this.email,required this.password,});
  User.from({ this.email, this.password,});

  User.fromJon(Map<dynamic, dynamic> json){
    password = json['password'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
  };

}




