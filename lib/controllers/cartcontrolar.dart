import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_comarse/const/firabaseconstent.dart';
import 'package:e_comarse/model/cartmodel.dart';

import 'package:get/get.dart';

class CartController extends GetxController{

  static CartController get to => Get.put(CartController());

  
  
  

   late CollectionReference reference;

   RxList<CartProduct> cartproductlist=RxList<CartProduct>([]);
   var count=1.obs;
   

   int get getcountcart=>cartproductlist.value.obs.length;

   @override
  
  

   @override
  void onInit() {
    
    super.onInit();
    reference=firebaseFirestore.collection("cart");
    cartproductlist.bindStream(getCartProduct());
  }
  
  
  
  Stream<List<CartProduct>> getCartProduct(){
    return reference.snapshots().map((event) => event.docs.map((e) => CartProduct.fromJson(e)).toList());
  }

  bool ifProductToCart(String productid){

    for(CartProduct cartProduct in CartController.to.cartproductlist){
      if(cartProduct.id==productid){
        return true;
      }
      
    }
    return false;
  }
    


    

   
   
    

   
    
}