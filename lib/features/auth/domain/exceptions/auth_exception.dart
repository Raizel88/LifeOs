/// Base exception for authentication domain.
class AuthDomainException implements Exception {
  final String message;
  const AuthDomainException(this.message);

  @override
  String toString() {
    return message;
  }
}

class InvalidCredentialsException extends AuthDomainException {
  const InvalidCredentialsException([super.message = 'Invalid email or password']);
}

class EmailAlreadyInUseException extends AuthDomainException {
  const EmailAlreadyInUseException([super.message = 'Email is already in use']);
}

class WeakPasswordException extends AuthDomainException {
  const WeakPasswordException([super.message = 'Password is too weak']);
}

class NetworkException extends AuthDomainException {
  const NetworkException([super.message = 'Network error occurred']);
}

class UnknownAuthException extends AuthDomainException {
  const UnknownAuthException([super.message = 'An unknown authentication error occurred']);
}
