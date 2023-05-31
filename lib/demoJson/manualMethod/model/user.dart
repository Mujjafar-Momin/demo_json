class User {
  final String firstName;
  final String lastName;
  final String phone;

  User(this.firstName, this.lastName, this.phone);

  ////json to object
  User.fromJson(Map<String, dynamic> json)
      : firstName = json['firstName'],
        lastName = json['lastName'],
        phone = json['phone'];

  Map<String, dynamic> toJson() =>
      {'firstName': firstName, 'lastName': lastName, 'phone': phone};
}
