import '../entities/auth_user.dart';
import '../repositories/auth_repository.dart';

class RegisterUseCase {
  final AuthRepository _repository;

  const RegisterUseCase(this._repository);

  Future<AuthUser> execute({
    required String email,
    required String password,
    required String name,
  }) {
    return _repository.registerWithEmail(
      email: email,
      password: password,
      name: name,
    );
  }
}
