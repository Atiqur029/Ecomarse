import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_comarse/const/firabaseconstent.dart';
import 'package:e_comarse/model/product.dart';
import 'package:get/get.dart';

class ProductControlar extends GetxController{
  static ProductControlar get to => Get.put(ProductControlar());
   static ProductControlar instence = ProductControlar();

  late CollectionReference collectionReference;

  RxList<Product> prodactlist=RxList<Product>([]);

  @override
  void onInit() {
    
    super.onInit();
    collectionReference=firebaseFirestore.collection("product");

    prodactlist.bindStream(getallProductList());
  }
  
  Stream<List<Product>> getallProductList()=>collectionReference.snapshots().map((event) => event.docs.map((item) => Product.fromJson(item)).toList());


  
}