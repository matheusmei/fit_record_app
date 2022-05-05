

class UserModel {
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? sId;
  int? iV;
  String? token;

  UserModel(
      {this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.sId,
      this.iV,
      this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    password = json['password'];
    sId = json['_id'];
    iV = json['__v'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    data['token'] = this.token;
    return data;
  }
}
