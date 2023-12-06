class UserData {
  String uid;
  String email;

  UserData({required this.uid, required this.email});

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      uid: json['uid'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
    };
  }
}
