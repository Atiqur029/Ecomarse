






import 'package:e_comarse/controllers/cartcontrolar.dart';

import 'package:e_comarse/services/database.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartProductDesign extends StatelessWidget {
  CartProductDesign({super.key});
  final CartController controller=Get.put(CartController());

  
 

  

  @override
  Widget build(BuildContext context) {

    

    double h=MediaQuery.of(context).size.height;
    return Scaffold(
      // floatingActionButton:  Container(
      //         height: 80,
      //         width: 350,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(25),
      //           color: Colors.amber


      //         ),
              
             //),
      appBar: AppBar(title:const Text("Cart "),centerTitle: true,backgroundColor: Colors.grey,),
      body:Obx((() {

        return ListView.builder(
          itemCount: controller.cartproductlist.length,
          
          
          itemBuilder: ((context, index) {

            double price=double.parse(controller.cartproductlist[index].price!);
            double quantity=double.parse(controller.cartproductlist[index].quantity!);
            var addTotalprice=price*quantity;
            
        

       
          return ListView(
            shrinkWrap: true,
            children:  [
         
            const SizedBox(height: 20,),
            Row(
               children: [
                   Padding(
                     padding: const EdgeInsets.only(left:10,right: 10),
                       child: Container(
                              height:100 ,
                              width: 100,
              
                               decoration:  BoxDecoration(
                                     color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                    
                                    boxShadow: [
                                         BoxShadow(color: Colors.grey.withOpacity(0.5),blurRadius: 5,offset: const Offset(2,5),spreadRadius: 2),
                      
                      
                       ],
                    
                    
                  ),
                  child: Image.network(controller.cartproductlist[index].img!,fit: BoxFit.contain,),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                   IconButton(onPressed: (() {
                    Database data= Database();
                    var result=0;
                    var number1=controller.count.value++;
                    result+=number1;

                    data.updateQuantity(controller.cartproductlist[index].id!,result.toString());
                       
                          
                    }), icon: const Icon(Icons.add)),

                    IconButton(onPressed: (() {

                    Database().delete(controller.cartproductlist[index]);
                  }), icon: const Icon(Icons.delete,color: Colors.red,)),
          
                        IconButton(onPressed: (() {
                                             Database data= Database();
                                             var result=0;
                                             var number1=controller.count.value--;
                                             result+=number1;

                                         data.updateQuantity(controller.cartproductlist[index].id!,result.toString());
                          
                        }), icon: const Icon(Icons.remove)),
                    
                ],

              ),
              
               
              Expanded(child:  Container(
                  height:100 ,
              
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    
                    boxShadow: [
                      BoxShadow(color: Colors.grey.withOpacity(0.5),blurRadius: 5,offset: const Offset(2,5),spreadRadius: 2),
                      
                      
                    ],
                    
                    
              ),child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
          
                children:  [
                  ListTile(
                    title: Text(controller.cartproductlist[index].name!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,),maxLines: 2,),
                    subtitle:RichText(text: TextSpan(
                      children: [

                        TextSpan(
                          text: "\$${controller.cartproductlist[index].price!}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: Colors.red),),

                         const TextSpan(
                            text:" x ",
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)
                          ),
                          
                          TextSpan(
                          text: controller.cartproductlist[index].quantity!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: Colors.green),),
                        
                      ]
                    )) 
                    

              
                  ),
                  Text("Total Price \$${addTotalprice.toDouble()}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrange),)
                 
                ],
              ),),)
                
          
          
              
            ],
          
            ),

           
          
           ],
          );

        }),

        

        

        );
        


      })),
      
      
      );}







          
 }

        
       
      
      

    
  
