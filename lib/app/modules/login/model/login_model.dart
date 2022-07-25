class LoginResponse {
  String? message;
  User? user;
  String? token;

  LoginResponse({this.message, this.user, this.token});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['message'] = message;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    return data;
  }
}

class User {
  String? sId;
  String? name;
  int? phone;
  String? email;
  String? password;
  bool? isActive;
  int? iV;
  String? address;
  String? userImg;

  User(
      {this.sId,
      this.name,
      this.phone,
      this.email,
      this.password,
      this.isActive,
      this.iV,
      this.address,
      this.userImg});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    isActive = json['isActive'];
    iV = json['__v'];
    address = json['address'];
    userImg = json['userImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['name'] = name;
    data['phone'] = phone;
    data['email'] = email;
    data['password'] = password;
    data['isActive'] = isActive;
    data['__v'] = iV;
    data['address'] = address;
    data['userImg'] = userImg;
    return data;
  }
}
