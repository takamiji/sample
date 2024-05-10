import 'package:flutter/material.dart';
import 'package:sample/models/public_user.dart';
import '../flavors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            final firstUser = PublicUser(
              followingCount: 0,
              followerCount: 0,
              uid: 'first',
            );
            final firstUserData = firstUser.toJson();
            final firstData = {"msg": "メッセージに成功しました"};
            await FirebaseFirestore.instance
                .collection('public_users')
                .doc(firstUser.uid)
                .set(firstUserData);
          } catch (e) {
            print(e);
            print('エラーが発生しました');
          }
        },
      ),
      body: Center(
        child: Text(
          'Hello ${F.title}',
        ),
      ),
    );
  }
}
