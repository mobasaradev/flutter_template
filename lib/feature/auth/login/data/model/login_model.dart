import '../../domain/entity/login_entity.dart';

class LoginModel extends LoginEntity {
  LoginModel({required super.email, required super.token});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(email: json['email'], token: json['token']);
  }

  Map<String, dynamic> toJson() {
    return {'email': email, 'token': token};
  }
}
