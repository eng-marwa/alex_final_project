class LoginResponseEntity {
  final String username;
  final String token;
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;

  LoginResponseEntity(
    this.username,
    this.token,
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.gender,
    this.image,
  );
}
