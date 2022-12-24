

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_comarse/const/firabaseconstent.dart';
import 'package:e_comarse/model/favproduct.dart';
import 'package:get/get.dart';

class AddFevoriteproductControlar extends GetxController{

  static AddFevoriteproductControlar instence=AddFevoriteproductControlar();

  RxList<Favproduct> favproductlist=RxList< Favproduct>([]);
  
  int get getfavcount=>favproductlist.value.obs.length;


  late CollectionReference reference;
  @override
  void onInit() {
    
    super.onInit();
    reference=firebaseFirestore.collection("fevorite");
    favproductlist.bindStream(getFavProductList());
  }
  
  Stream<List<Favproduct>> getFavProductList() =>reference.snapshots().map((event) => event.docs.map((e) => Favproduct.fromJson(e)).toList());

 bool ifFavproduct(String favprodctid){
  return favproductlist.any((element) => element.id==favprodctid);

 }


}