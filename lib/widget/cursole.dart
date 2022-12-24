import 'package:card_swiper/card_swiper.dart';

import 'package:e_comarse/controllers/slidercontrolar.dart';
import 'package:e_comarse/model/homeslider.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CursoleSliderWidget extends StatelessWidget {
 CursoleSliderWidget({super.key});

   final  SliderControlar controlar =Get.put(SliderControlar());


 
  @override
  Widget build(BuildContext context) {

    bool isLoading=true;
    
    double h=MediaQuery.of(context).size.height;

    
      return Obx((() {

        return isLoading? Swiper(itemCount: controlar.cursorSliderList.length,autoplay: true,itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              
              height: h*0.2,
              
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: NetworkImage(controlar.cursorSliderList[index].imgurl!),fit: BoxFit.cover)
              ),
              //child: Image.network(controlar.cursorSliderList[index].imgurl!),
          
            ),
          );
          
          
        // ignore: dead_code
        }):const Center(child:CircularProgressIndicator());//control: const SwiperControl(color: Colors.red),);

//         return ListView.builder(itemCount: controlar.cursorSliderList.length,itemBuilder:((context, index) {

//           return Row(
//             children: [
//               Container(height: h*0.5 ,child: Image.network(controlar.cursorSliderList[index].imgurl!))

//             ],
          

//   //         return CarouselSlider(
//   //  items: [],
//   //  options: CarouselOptions(
//   //     height: 400,
//   //     aspectRatio: 16/9,
//   //     viewportFraction: 0.8,
//   //     initialPage: 0,
//   //     enableInfiniteScroll: true,
//   //     reverse: false,
//   //     autoPlay: true,
//   //     autoPlayInterval: Duration(seconds: 3),
//   //     autoPlayAnimationDuration: Duration(milliseconds: 800),
//   //     autoPlayCurve: Curves.fastOutSlowIn,
//   //     enlargeCenterPage: true,
//   //     enlargeFactor: 0.3,
     
//   //     scrollDirection: Axis.horizontal,
//         );}
//  ));
          
        }) );
       
      //   return CarouselSlider.builder(
      //     itemCount: controlar.cursorSliderList.length,
      //     itemBuilder: (context, index, realIndex) {
      //     final sliderimages=controlar.cursorSliderList[index];

      //     return buildimage(sliderimages,index);

            

            
      //     },
      //     options:CarouselOptions(
      // height: h*0.2,
      // aspectRatio: 16/9,
      // viewportFraction: 0.8,
      // initialPage: 0,
      // enableInfiniteScroll: true,
      // reverse: false,
      // autoPlay: true,
      // autoPlayInterval: Duration(seconds: 3),
      // autoPlayAnimationDuration: Duration(milliseconds: 800),
      // autoPlayCurve: Curves.fastOutSlowIn,
      // enlargeCenterPage: true,
      // enlargeFactor: 0.3,
      
      // scrollDirection: Axis.horizontal, 
      //     ));
        // return ListView.builder(itemCount: controlar.cursorSliderList.length,itemBuilder: ((context, index) {

        //   return Container(
        //     height: 250,
            
        //     child: Image.network(controlar.cursorSliderList[index].imgurl!));
        //   //return Text(controlar.cursorSliderList[index].name!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),);
          
          
        // }));


      }
//         return 
// CarouselSlider.builder(itemCount: controlar.cursorSliderList.length, itemBuilder:((context, index, realIndex) {

//   return Container(
//     height: h*0.2,

//     decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),image: DecorationImage(image: NetworkImage(controlar.cursorSliderList[index].imgurl??"https://cdn-icons-png.flaticon.com/512/4208/4208397.png"))),
  
//   );
 
// }), options: carosaleoption(h));

       
//      }));}

  
// CarouselOptions carosaleoption(double h) {
//     return CarouselOptions(
//     height: h*0.2,
//     aspectRatio: 16/9,
//     viewportFraction: 0.8,
//     initialPage: 0,
//     enableInfiniteScroll: true,
//     reverse: false,
//     autoPlay: true,
//     autoPlayInterval: const Duration(seconds: 3),
//     autoPlayAnimationDuration: const Duration(milliseconds: 800),
//     autoPlayCurve: Curves.fastOutSlowIn,
//     enlargeCenterPage: true,
//     enlargeFactor: 0.3,
    
//      scrollDirection: Axis.horizontal,);
//   }

//   Widget _loading(){
//     return const Center(child: CircularProgressIndicator(),);
//   }
  
//   Widget buildSlider( HomeSlider slider ) {

//     return Container(
//       height: 250,

//       child: Image.network(slider.imgurl??"https://cdn-icons-png.flaticon.com/512/4208/4208397.png")
//       // decoration: BoxDecoration(
//       //   image: DecorationImage(image: slider.imgurl)
//       // ),


//     );
//   }
}

  
  Widget buildimage(HomeSlider sliderimages, int index) {

    return Container(
      margin:const  EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: Image.network(sliderimages.imgurl!,fit: BoxFit.cover,),


    );


  }
