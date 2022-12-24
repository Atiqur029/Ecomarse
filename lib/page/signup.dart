

import 'package:e_comarse/controllers/authcontrolar.dart';
import 'package:e_comarse/reuusabl/reausablebutton.dart';
import 'package:e_comarse/reuusabl/reausableform.dart';
import 'package:e_comarse/widget/textdesign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/fromimage.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
   double h=MediaQuery.of(context).size.height;

   AuthController authController=Get.put(AuthController());
    //  final nameControlar= TextEditingController();
    //   final emailcontrolar= TextEditingController();
    //   final passwordControlar =TextEditingController();

    //   String value="";

    return Scaffold( body: SingleChildScrollView(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),  
          child: Center(
            child: Column(
           
             
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                
                SizedBox(height: h*0.2 ,),
                
              
                const Fromimage(name: 'asset/img/signup.jpg',),
               
                SizedBox(height: h*0.10 ,),
                 const Text("Sigin Up Your Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                 SizedBox(height: h*0.05 ,),

                 ReaUsableForm(controlar: authController.nameControlar, hintext: "Your Name", 
            
                  
                 type: TextInputType.emailAddress, prefixIcon: const Icon(Icons.people_rounded), ),
                  
                
                 SizedBox(height: h*0.05 ,),
                ReaUsableForm(controlar: authController.signupemailcontrolar, hintext: "Enter Your Email", type: TextInputType.emailAddress, prefixIcon: const Icon(Icons.email_rounded), ),
                SizedBox(height: h*0.03,),
                ReaUsableForm(isbool: true ,controlar: authController.signinuppasswodcontrolarControlar, hintext: "Enter Your Password Here",  type: TextInputType.visiblePassword, prefixIcon: const Icon(Icons.lock),),
                SizedBox(height: h*0.03,),
        
                //SizedBox(height: h*0.01,),
        
                Row(
                  children: [
                    Expanded(child: Container()),
        
                     const TextDesgn(text: "Already Have Account?",color: Colors.red,) ,
                     
                     InkWell(
                      onTap: () {
                        Get.back();
                      },
                      
                      child: const TextDesgn(text: "Sign-Up",color: Colors.green,fontsize: 20,))
        
        
        
                     
                     
                  ],
        
                  
                ),
                 SizedBox(height: h*0.03,),
                 ReaUsableButton(onPreesed: (() {
                  AuthController.instance.register(authController.signupemailcontrolar.text, authController.signinuppasswodcontrolarControlar.text);
                  Get.snackbar("About User", "User Message",duration: const Duration(seconds: 3),backgroundColor: Colors.red,snackPosition: SnackPosition.BOTTOM,titleText: const TextDesgn(text: "Sign Up Success",color: Colors.white,),messageText: const Text("SucessFully Sign Up"));
                  //authController.nameControlar.clear();
                  authController.signupemailcontrolar.clear();
                  authController.signinuppasswodcontrolarControlar.clear();
                   
                 }),child: const TextDesgn(text: "Sign-Up",color: Colors.white,),)
                 
            
            
                //reausableform()
          
          
              ],
            ),
          ),
        ),
      ));
  }
}