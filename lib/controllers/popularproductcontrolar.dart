import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_comarse/const/firabaseconstent.dart';
import 'package:e_comarse/model/popularproduct.dart';
import 'package:get/get.dart';

class PopularProductControlar extends GetxController{


  late CollectionReference reference;

  RxList<PopularProduct> popolarlist=RxList<PopularProduct>([]);

  @override
  void onInit() {
    
    super.onInit();

    reference=firebaseFirestore.collection("popularproduct");
    popolarlist.bindStream(getpopularproduct());
  }
  
  Stream<List<PopularProduct>> getpopularproduct() =>reference.snapshots().map((event) => event.docs.map((e) => PopularProduct.fromMap(e)).toList());
}