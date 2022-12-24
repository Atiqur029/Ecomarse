



import 'package:e_comarse/controllers/addfevoriteproduct.dart';
import 'package:e_comarse/services/database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FevoriteScreen extends StatelessWidget {
 FevoriteScreen({super.key});
  final  AddFevoriteproductControlar controlar=Get.put(AddFevoriteproductControlar());

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(title: const Text("Fevorite product"),),
       body: Obx((() {
        return ListView.builder(
        itemCount: controlar.favproductlist.length,
        shrinkWrap: true,
        itemBuilder:((context, index) {
          return ListView(
            shrinkWrap:  true,
            children: [
              ListTile(title: Text(controlar.favproductlist[index].name!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                trailing:IconButton(onPressed: (() {
                  Database().deletefavproductid(favproduct: controlar.favproductlist[index]);

                 
                }), icon: const Icon(Icons.delete,color: Colors.black,)),
               leading: Image.network(controlar.favproductlist[index].img!,fit: BoxFit.contain,),
              
              ),

            ],

          );
          
        }));
        
         
       })));
  }
}