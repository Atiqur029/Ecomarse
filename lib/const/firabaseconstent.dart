import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:firebase_storage/firebase_storage.dart';

FirebaseAuth auth=FirebaseAuth.instance;

final database=FirebaseDatabase.instance;

FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;




final Future<FirebaseApp> initializeApp=Firebase.initializeApp();

FirebaseStorage storageinstence=FirebaseStorage.instance;
