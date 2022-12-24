
import 'package:e_comarse/controllers/specialcatogoricontrolar.dart';
import 'package:e_comarse/model/specialcatagori.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SpecialCatagoris extends StatelessWidget {
   SpecialCatagoris({super.key});


  final  SpecialCatagoriControlar controlar=Get.put(SpecialCatagoriControlar());

  @override
  Widget build(BuildContext context) {
  
    return Obx((() {
      
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(controlar.specialcatagorilist.length, (index){
              return  _genaritingSpecialCatagori(controlar.specialcatagorilist[index]);

            }),
            
            
          );
        }),

      );
      
    }
  }
  
  Widget _genaritingSpecialCatagori( SpecialCatagori specialCatagori) {

    return Stack(
      children: [
       Positioned(
         child: SizedBox(
           
          height: 160,
          //decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(a.imgurl!))),
           
         
           
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.black12.withOpacity(0.5), BlendMode.darken),
            
            
            child: Image.network(specialCatagori.imgurl!,fit: BoxFit.cover,)),
       
       
             ),
       ),

       Positioned(
        top: 80,
        left: 80,
        
        
        child: Text(specialCatagori.title!,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,),),)
      ]
    );


  }
  
  
    


  
