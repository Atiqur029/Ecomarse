
import 'package:e_comarse/controllers/addfevoriteproduct.dart';
import 'package:e_comarse/controllers/cartcontrolar.dart';
import 'package:e_comarse/controllers/productcontrolar.dart';
import 'package:e_comarse/model/favproduct.dart';
import 'package:e_comarse/model/product.dart';
import 'package:e_comarse/services/database.dart';



import 'package:flutter/material.dart';


import 'package:get/get.dart';

class PopularProductdesign extends StatefulWidget {
  final Product product;
  const  PopularProductdesign({super.key, required this.product});

  @override
  State<PopularProductdesign> createState() => _PopularProductdesignState();
}

class _PopularProductdesignState extends State<PopularProductdesign> {
  final ProductControlar controlar=Get.put(ProductControlar());

  final CartController ccontrolar=Get.put(CartController());

  final AddFevoriteproductControlar favConrolar=Get.put(AddFevoriteproductControlar());

  @override
  Widget build(BuildContext context) {
    bool isFavoriteProduct=false;

    Favproduct favproduct=Favproduct();


    
   return Obx((() {
    isFavoriteProduct=favConrolar.ifFavproduct(favproduct.getid!);

     

      return Column(
      
        children: [
          
      
          SingleChildScrollView(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: controlar.prodactlist.length,
                
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,),
                  itemBuilder: (context, index) {
              
            double presentprice=double.parse(controlar.prodactlist[index].price!);
            double oldprice=double.parse(controlar.prodactlist[index].oldprice!);
            double discount=((oldprice-presentprice)/oldprice*100);
             return  Column(
             
              
              
               children: [
                 
                    Container(
                      width: 300,
                      height: 265,
                       
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),spreadRadius: 3,blurRadius: 10,offset: const Offset(0,5)),
                    
                        ]
                            
                           
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Image.network(controlar.prodactlist[index].img!,fit: BoxFit.contain,height: 100,),
                    
                            const SizedBox(height: 10,),
                            Text(controlar.prodactlist[index].name!,style: const TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                            Center(child: Text("\$${controlar.prodactlist[index].price!}",style: const TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.blue),)),
                            _buildofferText(discount: discount,oldPrice: controlar.prodactlist[index].oldprice!),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                                children: [
                                  
                                  CircleAvatar(
                                      backgroundColor: Colors.white,
                                    child: IconButton(onPressed: (() {
                                      setState(() {
                                        isFavoriteProduct=true;
                                         Database().addFevoriteproduct(product: controlar.prodactlist[index]);
                      
                                      });
                                       
                      
                    }), icon:AddFevoriteproductControlar.instence.ifFavproduct(controlar.prodactlist[index].id!)?const Icon(Icons.favorite):const Icon(Icons.favorite_border),),
                                  ),
                                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(onPressed: (() {
                     
                      if(!CartController.to.ifProductToCart(controlar.prodactlist[index].id??"")){
                         Database().addProductToCart(product: controlar.prodactlist[index]);
                         return;
                    
                      }
                      Get.snackbar(controlar.prodactlist[index].name!, "All ready have a cart");
                    
                      
                      
                     
                      
                      
                    }), icon: const Icon(Icons.shopping_cart,color: Colors.red,)),
                                  ),
                                  
                                ],
                              )
                    
                          
                           
                    
                          ],
                        ),
                        ),
                                  
                  
                                 
                    
                                 
                                   ),
                   
                
               ],
             );
            
                  },
                  
                  
              
             
            ),
          )
         
          
        ],
      );
      
   }
   ));

   
}

Widget _buildofferText({ required double discount,required String oldPrice}){

    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: discount>0?
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       
          children: [
            Text(
              "\$$oldPrice",
              style:  const TextStyle(

                fontSize: 14,
                decoration: TextDecoration.lineThrough,
                color: Colors.red

              ),
            ),
            //const SizedBox(width: 30 ,),
          

            Text("$discount% off",style: const TextStyle(fontSize: 10,color: Colors.green,decoration:TextDecoration.overline )),

            
          ],
        ):Container()

      ),
    );
  } 
}

