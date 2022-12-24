import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_comarse/const/firabaseconstent.dart';
import 'package:e_comarse/model/homeslider.dart';
import 'package:get/get.dart';

// class SliderControlar extends GetxController{ 

//   static SliderControlar get to=>Get.find();

//   RxList<HomeSlider> homesliderlist=<HomeSlider>[
//     HomeSlider(),
//     HomeSlider(),

//   ].obs;



//   List <HomeSlider> get getsliderlist=>homesliderlist.value;

//   @override
//   void onReady() {

//     Database().getdatabase();
    
//     super.onReady();
//   }

//   void  setsliderlist(List<HomeSlider> list){
//     homesliderlist.value=list;
//   }
// }


class SliderControlar extends GetxController{

  RxList<HomeSlider> cursorSliderList=RxList<HomeSlider>([]);

  late CollectionReference reference;


  @override
  void onInit() {
    
    super.onInit();
    reference=firebaseFirestore.collection("cursorbuilder");
    cursorSliderList.bindStream(gecursorslider());

    
  }
  
  Stream<List<HomeSlider>> gecursorslider()=>reference.snapshots().map((event) => event.docs.map((item) => HomeSlider.fromMap(item)).toList());



  
}