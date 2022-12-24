

import 'package:cloud_firestore/cloud_firestore.dart';




class HomeSlider {


  String ? id;

  String ?name;

  String ?imgurl;
  HomeSlider({
     this.id,
     this.name,
     this.imgurl,
  });


  
 

  factory HomeSlider.fromMap(DocumentSnapshot data) {
    return HomeSlider(
      id: data.id,
      name: data["name"],
      imgurl: data["imgurl"]
      
    );
  }

}