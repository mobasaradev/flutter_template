import '../entity/login_entity.dart';

abstract class LoginRepository {
  Future<LoginEntity> login(String email, String password);
}
