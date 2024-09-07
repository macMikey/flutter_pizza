class MyUserEntity {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUserEntity({required this.userId, required this.email, required this.name, required this.hasActiveCart});

// tutorial uses "document" instead of "json", so I'm using "toDocument" instead of "toJson"
  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCart': hasActiveCart,
    };
  }

// tutorial uses "document" instead of "json", so I'm using "fromDocument" instead of "fromJson"
  static MyUserEntity fromDocument(Map<String, Object?> doc) {
    return MyUserEntity(
      userId: doc['userId'] as String,
      email: doc['email'] as String,
      name: doc['name'] as String,
      hasActiveCart: doc['hasActiveCart'] as bool,
    );
  }
}
