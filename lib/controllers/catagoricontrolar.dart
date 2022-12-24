import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_comarse/const/firabaseconstent.dart';
import 'package:e_comarse/model/catagori.dart';

import 'package:get/get.dart';

class CatagoriControlar extends GetxController{

  static CatagoriControlar instent=CatagoriControlar();

  late CollectionReference collectionReference;

  // static CatagoriControlar get to=>Get.find();


  // RxList<Catagoris> catagorislist=<Catagoris>[

  //   Catagoris(),
  // ].obs;

  // @override
  // void onReady() {
  //   Database.to.getcatagorilist();
    
  //   super.onReady();
  // }


  // List<Catagoris>  get getcatagorilist=>catagorislist.value;


  // void setcatagorilist(  List<Catagoris> list){
  //   catagorislist.value=list;

  // }

  RxList<Catagoris> catagoris=RxList<Catagoris>([]);

  @override
  void onInit() {
    
    super.onInit();
    collectionReference=firebaseFirestore.collection("catagoris");
    catagoris.bindStream(getAllCatagoris());
  }
  
  Stream<List<Catagoris>> getAllCatagoris() =>

    collectionReference.snapshots().map((query) =>query.docs.map((item) =>Catagoris.fromMap(item) ).toList() );
   
     }



  


