enum AuthStatus {
  success,
  error;
}

class AuthResponse {
  final AuthStatus _authStatus;

  final String _message;

  AuthResponse(this._authStatus, this._message);

  get authStatus => _authStatus;

  get message => _message;
}
