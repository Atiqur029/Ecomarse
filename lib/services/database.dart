


import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_comarse/const/firabaseconstent.dart';
import 'package:e_comarse/controllers/authcontrolar.dart';
import 'package:e_comarse/controllers/productcontrolar.dart';
import 'package:e_comarse/model/cartmodel.dart';
import 'package:e_comarse/model/catagori.dart';
import 'package:e_comarse/model/favproduct.dart';
import 'package:e_comarse/model/homeslider.dart';
import 'package:e_comarse/model/product.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart ';



class Database {

  final ProductControlar productcontrolar=Get.put(ProductControlar());

  final AuthController authController=Get.put(AuthController());
   //Database get to=>Get.put(Database());

  //List<Catagoris> catagorislists=[];

   List <HomeSlider> homesliders=[];

 

  // void getdatabase(){
  //   DatabaseReference reference=database.ref().child("slider");
  //   reference.onValue.listen((event) {
  //     Map<dynamic,dynamic> value=event.snapshot.value as Map<dynamic,dynamic>;

  //     value.forEach((key, value) {
  //       homesliders.add(HomeSlider.fromJson(value));
        
  //     });

  //     SliderControlar.to.setsliderlist(homesliders);
      
  //   });

  // }

  // void getcatagorilist() {
  //   DatabaseReference reference=database.ref("catagoris");

  //   reference.onValue.listen((event) {
  //     print(event.snapshot.value);

  //     List<Catagoris> catagorislists=[];

  //     Map<dynamic,dynamic> values=event.snapshot.value as Map<dynamic,dynamic>;

  //     values.forEach((key, values) {
  //       catagorislists.add(Catagoris.fromJson(values));
        
  //     });

      // CatagoriControlar.to.setcatagorilist(catagorislists);


      void addData({required Product product})async{

        //CollectionReference reference=firebaseFirestore.collection("product");

        final addproduct=firebaseFirestore.collection("product").doc();

        final addsomeproduct=Product(
          id: addproduct.id,
          name: product.name,
          description: product.description,
          img: product.img,
          oldprice: product.oldprice,
          price: product.price,
          quantity: product.quantity,
          catagory: product.catagory,
          subcatagory: product.subcatagory,
          brand: product.brand


        );
        final json=addsomeproduct.tojson();

        await addproduct.set(json);
                            
        
      }

      void addCatagory({required Catagoris catagoris})async{
     

        //CollectionReference reference=firebaseFirestore.collection("catagoris");
        final docuser=firebaseFirestore.collection("catagoris").doc();
        
         final catagoriss=Catagoris(
          id: docuser.id,
          name: catagoris.name,
          imgurl: catagoris.imgurl,);
         final json=catagoriss.toMap();
         await docuser.set(json);
         

      }

      uploadImage({ File?  imgfile,  Function (String url)?onsucess, String? imagePath}) async{

      Get.defaultDialog(
      title: 'Uploading Image',
      content: const SizedBox(
        height: 100,
        width: 100,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );


        Reference reference=storageinstence.ref().child("$imagePath/${DateTime.now().millisecondsSinceEpoch}");

         UploadTask uploadTask=reference.putFile(File(imgfile!.path));
         uploadTask.then((res) {
           Get.back();
           res.ref.getDownloadURL().then((url) => onsucess!(url));});


      }

      void addProductToCart({ required Product product})async{

        String userid=auth.currentUser!.uid;
       //authController.firebasseUser user=auth.currentUser;

       
        
        
        // ignore: unnecessary_null_comparison
        if(userid!=null){
          DocumentReference reference=firebaseFirestore.collection("cart").doc();
          final puductlist=Product(
          id: userid,
          name: product.name,
          description: product.description,
          img: product.img,
          oldprice: product.oldprice,
          price: product.price,
          quantity: product.quantity,
          catagory: product.catagory,
          subcatagory: product.subcatagory,
          brand: product.brand

          );
          final json=puductlist.tojson();
          await reference.set(json);



           

        }

        else{
          Get.snackbar("Error", "Please Logg in to Add Product to card",duration: const Duration(seconds: 2),snackPosition:SnackPosition.BOTTOM );

        }

       


      }
    void delete(CartProduct product){
    //CollectionReference reference;
    firebaseFirestore.collection("cart").doc(product.id).delete();
    Fluttertoast.showToast(msg: "cart Deleted Succesfully");


    



  }
  void updateQuantity(String userid, String vlue) {
    //DocumentSnapshot snapshot;

      
      DocumentReference ref;
      ref =firebaseFirestore.collection("cart").doc(userid);
      
      
      
      ref.update({"quantity":vlue}).then((value){
       Get.snackbar("Quantity ",  "Quantity Updated Sucessfully",snackPosition:SnackPosition.BOTTOM);

      }).catchError((error){
        Get.snackbar("error",  "Something problem in $error",snackPosition:SnackPosition.BOTTOM );
      });


     
    }

    void addFevoriteproduct({required Product product})async{
      //CollectionReference ref;
      
      DocumentReference reference=firebaseFirestore.collection("fevorite").doc(product.id);


      //CollectionReference<Map<String, dynamic>> reference=firebaseFirestore.doc(uid).collection("fevorite");

      final fevoritelist=Product(id: reference.id,
      name: product.name,
      description: product.description,
      img: product.img,
      oldprice: product.oldprice,
      price: product.price,
      quantity: product.quantity,
      catagory: product.catagory,
      subcatagory: product.subcatagory,
      brand: product.brand

        
      );
      final json=fevoritelist.tojson();

      await reference.set(json);
    
    }

    void deletefavproductid({ required Favproduct favproduct}){

      DocumentReference reference=firebaseFirestore.collection("fevorite").doc(favproduct.id);
      reference.delete();
      Get.snackbar("Favorite Product", "Delete Succesfully",snackPosition:SnackPosition.BOTTOM );
    }
   

  
   
}

      

     



  

  
