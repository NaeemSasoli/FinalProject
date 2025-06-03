class UserModel {
  final String uid;
  final String email;
  final String name;
  
  UserModel({
    required this.uid,
    required this.email,
    required this.name,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      uid: data['uid'] ?? '',
      email: data['email'] ?? '',
      name: data['name'] ?? '',
    );
  }
}