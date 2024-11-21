class Login {
  final String status;
  final int id;
  final String message;

  const Login({required this.status, required this.id, required this.message});

  factory Login.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {'status': String status, 'id': int id, "message": String message} =>
        Login(
          status: status,
          id: id,
          message: message,
        ),
      _ => throw const FormatException('Failed to load data. (login)'),
    };
  }
}
