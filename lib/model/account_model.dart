

class Account {
  String? name;
  String? email;
  String? phone;
  String? password;
  String? confirmPassword;

  Account({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.confirmPassword
});
  Account.from({
    this.name,
    this.email,
    this.phone,
    this.password,
    this.confirmPassword,
});

  Account.fromJon(Map<dynamic, dynamic> json){
    name = json['name'];
    phone = json['phone'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
    'confirmPassword': confirmPassword,
    'phone': phone,
    'name': name,
  };

}




