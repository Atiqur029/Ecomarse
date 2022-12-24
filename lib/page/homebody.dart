




import 'package:e_comarse/model/product.dart';
import 'package:e_comarse/view/catagoridesign.dart';
import 'package:e_comarse/view/popolarproductdesign.dart';
import 'package:e_comarse/view/specialcatagori.dart';
import 'package:e_comarse/widget/appbar.dart';
import 'package:e_comarse/widget/cursole.dart';
import 'package:e_comarse/widget/textdesign.dart';
import 'package:flutter/material.dart';




class HomeBody extends StatelessWidget {
  

  
    const HomeBody({super.key});

   //final SliderControlar controller=Get.find();
   
  
   

  @override
  Widget build(BuildContext context) {
    Product product=Product();

   
     double h=MediaQuery.of(context).size.height;
     //double w=MediaQuery.of(context).size.width;
    return Scaffold(
        //appBar: const Appbarpage(),
     
      body: ListView(
        //prototypeItem: const Appbarpage(),
       
        
        
      
        children:  [
          const Appbarpage(),
         SizedBox(
          height: h*0.2,
          
          child: CursoleSliderWidget()),
          const SizedBox(
            height: 0.2,
          ),
      
          const TextDesgn(text: "Catagoris",fontsize: 20,fontWeight: FontWeight.bold,),
           Container(margin: const EdgeInsets.only(top: 5,left: 5,right: 5),
      
            height: h*0.15,
       
         child:Catagoridesign(),),
           
            _genarotorlabel(),
        
            const SizedBox(
              height: 20,
            ),
            const Text("Special Offer", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 10,
            ),
             SingleChildScrollView(
              
              scrollDirection: Axis.horizontal,
              
              child: SpecialCatagoris()),
        
              const SizedBox(
              height: 20,
            ),
            const Text("Popular Product", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           
            _popularProduct(),
        
            //  SizedBox(height: 200,),
        
            //  SingleChildScrollView(scrollDirection:Axis.horizontal ,
             
             
            PopularProductdesign(product:product ,),
      
            //  MaterialButton(
              
            //   onPressed: (){
            //     Product product=Product();
            //     Database().addProductToCart(product: product);
            //     print("hi");
      
            //   },child:Text("Cart"),)
        
        
        
        
        
        
        
              
      
      
      
         
          
      
        ]
      ),
    );

    
      




    

  }

  Widget _genarotorlabel(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [

        TextDesgn(text: "Special For You",fontWeight: FontWeight.w600,fontsize: 20, color: Colors.white,),
        TextDesgn(text: "See More ",fontsize: 16,fontWeight: FontWeight.w400,color: Colors.white,)


      ],
    );

    

  }



   Widget _popularProduct(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [

        TextDesgn(text: "Popular Products",fontWeight: FontWeight.w600,fontsize: 20, color: Colors.white,),
        TextDesgn(text: "See More ",fontsize: 16,fontWeight: FontWeight.w400,color: Colors.white,)


      ],
    );




  
}}