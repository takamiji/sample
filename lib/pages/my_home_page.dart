import 'package:flutter/material.dart';
import 'package:sample/models/public_user/public_user.dart';
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
            final firstUserDocment = await FirebaseFirestore.instance
                .collection('public_users')
                .doc('first')
                .get();
            final firstUserData = firstUserDocment.data();
            if (firstUserData == null) {
              print('データが存在しません');
              return;
            }
            final firstUserJson = PublicUser.fromJson(firstUserData);
            print("ユーザーID：${firstUserJson.uid}");
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
