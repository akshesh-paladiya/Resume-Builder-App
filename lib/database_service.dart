import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

class DataBaseServices{
  static Future<void> addData(String name, String mono, String email, String url, String ed, String ts, String ss, String ex, String cd, String pd, String rc) async{
    firebaseFirestore
    .collection('notes')
        .add({"name":name, "mono":mono, "email":email, "url":url, "ed":ed, "ts":ts, "ss":ss, "ex":ex, "cd":cd, "pd":pd, "rc":rc,})
        .whenComplete(() => print('Add Successfully'))
        .catchError((e){
          print(e.toString());
    });
}

static Future<void> delete(String id) async{
    await firebaseFirestore.collection('notes').doc(id).delete();
}

  static Future<void> updateData(String id, String name, String mono, String email, String url, String ed, String ts, String ss, String ex, String cd, String pd, String rc) async{
    await firebaseFirestore.collection('notes').doc(id).update({
      "name":name, "mono":mono, "email":email, "url":url, "ed":ed, "ts":ts, "ss":ss, "ex":ex, "cd":cd, "pd":pd, "rc":rc,
    });

  }
}