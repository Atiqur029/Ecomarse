

import 'package:cloud_firestore/cloud_firestore.dart';

class PopularProduct{

   String ?id;

   String?imgurl;


   PopularProduct({this.id,this.imgurl});


   factory PopularProduct.fromMap(DocumentSnapshot data)=>PopularProduct(

    id: data.id,
    imgurl: data["imgurl"]
   );






    
  }


