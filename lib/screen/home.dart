// ignore_for_file: public_member_api_docs, sort_constructors_first



import 'package:e_comarse/controllers/menucontrolar.dart';

import 'package:e_comarse/page/homebody.dart';

import 'package:e_comarse/fevoriteproduct/fevoritescreen.dart';
import 'package:e_comarse/screen/mesegescreen.dart';
import 'package:e_comarse/screen/person.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';








class HomeScreen extends StatelessWidget {


  final MenuControlar controlar=Get.put(MenuControlar());

    HomeScreen({
    Key? key,
   
  }) : super(key: key);

  

    // final SliderControlar controller=Get.put(SliderControlar());

    


  @override
  Widget build(BuildContext context) {
     List<Widget> screen=[

     const HomeBody(),
     FevoriteScreen(),
    const MessegeScreen(),
    PersonScreen()];

  
    return Scaffold(
    
 
      body: Obx((() {
      
        return IndexedStack(
          index: controlar.currentindext.value,
          children: screen,
            );}
      
        )
        ),
        bottomNavigationBar: BottomNavigationBar(
      onTap: ((value) {
        controlar.changeManustate(value);
        
      }),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white38,
      selectedFontSize: 20.0,
      unselectedFontSize: 14.0,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      type: BottomNavigationBarType.shifting,
      currentIndex:controlar.currentindext.value,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home",backgroundColor: Colors.purple),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: "Favorite",backgroundColor: Colors.purple),
        BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: "Message",backgroundColor: Colors.purple),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Profile",backgroundColor: Colors.purple),
      ],
    
    
      
      ),);}
        

      
      // backgroundColor: const Color.fromARGB(255, 28, 46, 51),
    
      //  body: Obx((){
      //   if(controlar.currentState==Menustate.profile){
      //     return PersonScreen();

      //   }

      //   else if(controlar.currentState==Menustate.favorite)
      //   {
      //     return const FevoriteScreen();
      //   }

      //   else if(controlar.currentState==Menustate.message){
      //     return const MessegeScreen();
      //   }

      //   else if( controlar.currentState==Menustate.home){
         
      //        return const HomeBody();
      //   }
          
        
      //   return  const HomeBody();


      //  }),
      //  bottomNavigationBar: MyBottomNavigation(),

    
    
  }

  