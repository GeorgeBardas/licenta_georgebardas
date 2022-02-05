class InputValidation {
  bool validateEmail(String? email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email ?? "");
  }

  bool validatePassword(String? password) {
    if (password == null) return false;
    return password.length >= 6;
  }

  bool validateConfirmPassword(String? password, String? confirmPassword) {
    if (password == null || confirmPassword == null) return false;
    return password == confirmPassword;
  }

  bool validateName(String? name) {
    if (name == null) return false;
    return RegExp(r'^[a-zA-Z -]*$').hasMatch(name);
  }

  bool validateCategory(String category) {
    return category.length >= 3;
  }
}
