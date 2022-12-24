import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_comarse/const/firabaseconstent.dart';
import 'package:e_comarse/model/specialcatagori.dart';

import 'package:get/get.dart';

class SpecialCatagoriControlar extends GetxController{


  late CollectionReference reference;

  RxList<SpecialCatagori> specialcatagorilist=RxList<SpecialCatagori>([]);


  @override
  void onInit() {
    
    super.onInit();
    reference=firebaseFirestore.collection("specialcatagoris");

    specialcatagorilist.bindStream(getspecialcatagori());
  }
  
  Stream<List<SpecialCatagori>> getspecialcatagori()=>reference.snapshots().map((event) => event.docs.map((item) =>SpecialCatagori.fromMap(item) ).toList());
} 