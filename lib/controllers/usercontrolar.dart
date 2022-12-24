import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_comarse/const/firabaseconstent.dart';
import 'package:e_comarse/model/usermodel.dart';

import 'package:get/get.dart';

class UserControlr extends GetxController{


  late CollectionReference reference;


  RxList<UserModel>userlist =RxList<UserModel>([]);


  @override
  void onInit() {
    
    super.onInit();

    reference=firebaseFirestore.collection("users");
    userlist.bindStream(getuserdata());

  }
  
  Stream<List<UserModel>> getuserdata() =>reference.snapshots().map((event) => event.docs.map((e) => UserModel.fromJson(e)).toList());
}
