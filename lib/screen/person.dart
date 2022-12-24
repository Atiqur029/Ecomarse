


import 'package:e_comarse/controllers/authcontrolar.dart';
import 'package:e_comarse/controllers/usercontrolar.dart';
import 'package:e_comarse/model/usermodel.dart';
import 'package:e_comarse/screen/admin/addcatagori.dart';
import 'package:e_comarse/screen/admin/addproduct.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../reuusabl/reausablemenu.dart';
import 'getimage.dart';

class PersonScreen extends StatelessWidget {
   PersonScreen({super.key});
   final UserControlr controlr=Get.put(UserControlr());
   final AuthController loggout=Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    

    return Obx((() => Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),centerTitle: true,
      ),

      body: ListView(
        children: 
          List.generate(controlr.userlist.length, (index) =>getWidget(context,controlr.userlist[index]) )
        
      ),
    )));
      

        
          
         
    
      
  

  
      
      
      
      

}

 Widget getWidget( BuildContext context ,UserModel user) {
               



      return Column(

        children: [

          const SizedBox(
            height: 20,
          ),
          GetImage(user:user),

         
        const SizedBox(
          height: 20,
        ),
        ReaUsableMenu(
          onTap: (() {}),
          leading: const Icon(Icons.person),
          title:Text(user.name!),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
        ),
        const  SizedBox(
          height: 20,
         ),

          ReaUsableMenu(
          onTap: (() {}),
          leading: const Icon(Icons.notifications_outlined),
          title:const Text("Notfication"),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),),

          const  SizedBox(
          height: 20,
         ),

          ReaUsableMenu(
          onTap: (() {}),
          leading: const Icon(Icons.settings_outlined),
          title:const Text("Settings"),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),),

          const  SizedBox(
          height: 20,
         ),

         ReaUsableMenu(
          onTap: (() {
            Get.to(const AddCatagory());
          }),
          leading: const Icon(Icons.category_outlined),
          title:const Text("Add Catagory"),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),),

          const  SizedBox(
          height: 20,
         ),

          ReaUsableMenu(
          onTap: (() {

            loggout.loggout();
          }),
          leading: const Icon(Icons.logout_outlined),
          title:const Text("Logg out"),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),),
         const SizedBox(
            height: 20,
          ),


          
          ReaUsableMenu(
          onTap: (() {
            Get.to(const AddProduct ());
          }),
          leading: const Icon(Icons.approval_outlined),
          title:const Text("Add Product"),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),),

   ]
   
   );
}}