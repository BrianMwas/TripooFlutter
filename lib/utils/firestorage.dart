
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';

Future<UploadTask> uploadImage(File file, String type, String propertyName) async {
  UploadTask uploadTask;
  final Reference ref = FirebaseStorage.instance
            .ref(type)
            .child("/${file.path.split("/").last}");

  final meta = SettableMetadata(
    contentType: "image/jpeg",
    customMetadata: {
      "filepath": file.path,
      "name": file.path.split("/").last
    }
  );

  uploadTask = ref.putFile(File(file.path), meta);

  return Future.value(uploadTask);
}