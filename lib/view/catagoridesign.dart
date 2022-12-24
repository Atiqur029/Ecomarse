import 'package:e_comarse/controllers/catagoricontrolar.dart';
import 'package:e_comarse/model/catagori.dart';

import 'package:flutter/material.dart';


import 'package:get/get.dart';

class Catagoridesign extends StatelessWidget {
 Catagoridesign({super.key});

  final CatagoriControlar controlar=Get.put(CatagoriControlar());

  @override
  Widget build(BuildContext context) {
    
    return Obx((() {
      //List<Catagoris> catagoris=controlar.getcatagorilist;
      
      return GridView.builder(
      
      
        
        itemCount: controlar.catagoris.length,
        
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 4,
        childAspectRatio: 0.8,crossAxisSpacing: 10,mainAxisSpacing: 10), itemBuilder: ((context, index) {

          {
            return _getCatagorilist(controlar.catagoris[index]);
          }
     }));
     }));
     }

  Widget _getCatagorilist(Catagoris catagori) {


    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Container(
          height: 80,
          width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: NetworkImage(catagori.imgurl!),fit: BoxFit.cover)
      ),

        ),

        Text(catagori.name!,)

        
      ],
    );
  } 
}

      
       
//         // return ListView(
//         //   scrollDirection: Axis.vertical,
//         //   shrinkWrap: true,
//         //   children:
          
             
          
             
          
          
//            [
            
          
            
//           Container(
      
                 
//            height: h*0.1,width: 80,
//            color: Colors.white,
             
            
//             padding:  const EdgeInsets.all(5),
//             child: Image.network(controlar.catagoris[index].imgurl!),
          
          
//           ),
 
//            Center(child: SizedBox(child: Text(controlar.catagoris[index].name!,style:const TextStyle(color: Colors.red,fontSize: 15) ,)))
         
//             ],
//         );
        
//       }));


//     }));
//   }
// }