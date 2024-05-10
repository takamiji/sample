class PublicUser {
  final int followingCount;
  final int followerCount;
  final String uid;

  PublicUser({
    required this.followingCount,
    required this.followerCount,
    required this.uid,
  });

  Map<String, dynamic> toJson() {
    return {
      'followingCount': followingCount,
      'followerCount': followerCount,
      'uid': uid,
    };
  }
}
