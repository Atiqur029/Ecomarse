import 'package:e_comarse/const/firabaseconstent.dart';

import 'package:e_comarse/page/signin.dart';
import 'package:e_comarse/screen/home.dart';
import 'package:e_comarse/widget/textdesign.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {

  static AuthController instance=Get.find();

  late  Rx<User?>?firebasseUser;

  final nameControlar=TextEditingController();
  final loginemailcontrolar=TextEditingController();
  final loginpasswordControlar =TextEditingController();
  final signupemailcontrolar=TextEditingController();
  final signinuppasswodcontrolarControlar =TextEditingController();

  



 

   

  @override
  void onReady() {
    
    super.onReady();
    firebasseUser=Rx<User?>(auth.currentUser);
    firebasseUser!.bindStream(auth.userChanges());

    ever(firebasseUser!, _initScreen);


  }
  
  
 

  

  _initScreen(User? user) {

    if(user==null){
      Get.offAll(const Signin());

    }
    else{
      Get.offAll( HomeScreen());
      
    }
  }

  void register(String email,String password)async{

    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);


     
      
    } catch (e) {
      Get.snackbar("About User", "User Message",duration: const Duration(seconds: 3),backgroundColor: Colors.red,snackPosition: SnackPosition.BOTTOM,titleText: const TextDesgn(text: "Account Creation Faild",color: Colors.white,),messageText: Text(e.toString()));
      
    }


    





}
void signin(String email,String password)async{

    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);

       
      
    } catch (e) {
      Get.snackbar("About Logg in", "User Logg in",duration: const Duration(seconds: 3),backgroundColor: Colors.red,snackPosition: SnackPosition.BOTTOM,titleText: const TextDesgn(text: "Logg in Failid",color: Colors.white,),messageText: Text(e.toString()));
      
    }


   
    




  }

  void loggout()async{
    await auth.signOut();
    //Get.offAll(const HomeBody());

  }
  
}


