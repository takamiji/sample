import 'package:cloud_firestore/cloud_firestore.dart';

typedef SDMap = Map<String, dynamic>;
typedef QSnapshot = QuerySnapshot<SDMap>;
typedef MapQuery = Query<SDMap>;
typedef QDoc = QueryDocumentSnapshot<SDMap>;
typedef Doc = DocumentSnapshot<SDMap>;

typedef FtureQSnapshot = Future<QSnapshot>;
typedef FtureDoc = Future<Doc>;

typedef DocRef = DocumentReference<SDMap>;
typedef ColRef = CollectionReference<SDMap>;
