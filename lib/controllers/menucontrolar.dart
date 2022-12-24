
import 'package:get/get.dart';

class MenuControlar extends GetxController{

  var currentindext=0.obs;

  void changeManustate(int index){

    currentindext.value=index;
  }
  // Rx<Menustate> currentMenuState=Menustate.home.obs;

  // Menustate get currentState=>currentMenuState.value;

  // RxList<Menustate> menulist=RxList<Menustate>([]);

  // void changeManustate(Menustate menustate){

  //   currentMenuState.value=menustate;
  // }



}