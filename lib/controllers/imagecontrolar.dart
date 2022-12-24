
import 'package:get/get.dart';

class ImageControlar extends GetxController{

  RxBool isProfilepicset=false.obs;
  var profilepickpath="".obs;
  void setprofileimagepath( String path){
    profilepickpath.value=path;
    isProfilepicset.value=true ;


  }

}