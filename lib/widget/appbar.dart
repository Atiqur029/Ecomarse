import 'package:badges/badges.dart';
import 'package:e_comarse/cart/cartproductdesign.dart';
import 'package:e_comarse/controllers/addfevoriteproduct.dart';
import 'package:e_comarse/controllers/cartcontrolar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
final CartController cartController=Get.put(CartController());
final AddFevoriteproductControlar favConrolar=Get.put(AddFevoriteproductControlar());

class Appbarpage extends StatelessWidget {
  const Appbarpage({super.key});

  @override
  Widget build(BuildContext context) {
    int result=0;

          int getcartproductcount=cartController.getcountcart;
          int getfavproductcount=favConrolar.getfavcount;
          result=getcartproductcount+getfavproductcount;
          
    return Row(
      
      children: [
        SizedBox(
          width: 280,
          height: 50,
          child: AppBar (
                
   
              elevation: 0,
              backgroundColor: Colors.grey,
              
              title:  TextFormField(
                decoration:const  InputDecoration(
                  filled: true,
                  
                  
                  hintText: "Serch"
                ),
                
              
              ),
            
               
                
                
              
  
            ),
        ),
        Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          
           Obx((() {
                
                 
                 return  Badge(
                  badgeContent:  Text( cartController.getcountcart.toString(),style: const TextStyle(fontSize: 10,color: Colors.white),),
                  badgeColor: Colors.red,
                  
                 
                  position: BadgePosition.topEnd(),
                  child: CircleAvatar(
                    
                    backgroundColor: Colors.brown,
                    child: IconButton(onPressed: (() {
                      Get.to( CartProductDesign ());
                      
                    }), icon: const Icon(Icons.shopping_cart)),
                  ),
                 );
               })),
               Badge(
                  badgeContent:  Text(result.toString() ,style: const TextStyle(fontSize: 10,color: Colors.white),),
                  badgeColor: Colors.red,
                  child: CircleAvatar(
                    
                    backgroundColor: Colors.brown,
                    child: IconButton(onPressed: (() {
                      
                    }),icon: const Icon(Icons.notifications),),
                  ),
                )

        ],

        ))
         
              
                 
                 
               
  
      ],
    );
  }
}
 

