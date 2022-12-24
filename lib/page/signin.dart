import 'package:e_comarse/controllers/authcontrolar.dart';
import 'package:e_comarse/page/signup.dart';
import 'package:e_comarse/widget/fromimage.dart';
import 'package:e_comarse/reuusabl/reausablebutton.dart';
import 'package:e_comarse/reuusabl/reausableform.dart';
import 'package:e_comarse/widget/textdesign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Signin extends StatelessWidget {
  const Signin({super.key});
 

  @override
  Widget build(BuildContext context) {
    AuthController authController=Get.put(AuthController());

  
     double h=MediaQuery.of(context).size.height;
    // TextEditingController emailcontrolar=TextEditingController();
    // TextEditingController paswordControlar=TextEditingController();
    //String value="";

    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),  
          child: Center(
            child: Column(
           
             
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                
                SizedBox(height: h*0.2 ,),
                
              
                const Fromimage(name: 'asset/img/loggin.jpg',),
               
                SizedBox(height: h*0.10 ,),
                 const Text("Sigin In Your Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                 SizedBox(height: h*0.05 ,),
                 ReaUsableForm(controlar: authController.loginemailcontrolar , hintext: "Enter Your Email", type: TextInputType.emailAddress, prefixIcon: const Icon(Icons.email_rounded),
                  
                ),
                SizedBox(height: h*0.03,),
                ReaUsableForm(isbool: true ,controlar: authController.loginpasswordControlar,type: TextInputType.visiblePassword,prefixIcon: const Icon(Icons.lock),
                 hintext: "Enter Your Password Here", 
            
                  
            
                  
                 ),
                SizedBox(height: h*0.03,),
        
                //SizedBox(height: h*0.01,),
        
                Row(
                  children: [
                    Expanded(child: Container()),
        
                     const TextDesgn(text: "Forget Your Password?",color: Colors.red,) ,
                     
                     InkWell(
                      onTap: () {
                        Get.to(const SignUp());
                      },
                      
                      child: const TextDesgn(text: "Sign-Up",color: Colors.green,fontsize: 20,))
        
        
        
                     
                     
                  ],
        
                  
                ),
                 SizedBox(height: h*0.03,),
                 ReaUsableButton(onPreesed: (() {

                  authController.signin(AuthController.instance.loginemailcontrolar.text, AuthController.instance.loginpasswordControlar.text);
                  Get.snackbar("About Logg in", "User Logg in",duration: const Duration(seconds: 3),backgroundColor: Colors.red,snackPosition: SnackPosition.BOTTOM,titleText: const TextDesgn(text: "Logg in Sucess",color: Colors.white,),messageText: const Text("SucessFully Logg in"));
                  authController.loginemailcontrolar.clear();
                  authController.loginpasswordControlar.clear();
                   
                 }),child: const TextDesgn(text: "Sign-in",color: Colors.white,),)
                 
            
            
                //reausableform()
          
          
              ],
            ),
          ),
        ),
      ));
      

    
    
  }
}