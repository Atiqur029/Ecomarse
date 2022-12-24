// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:cloud_firestore/cloud_firestore.dart';

class SpecialCatagori {


  String ?id;
  String ?title;
  String ?imgurl;
  SpecialCatagori({
     this.id='',
     this.title,
     this.imgurl
  });

  

 
  factory SpecialCatagori.fromMap(DocumentSnapshot data){
    return SpecialCatagori(

      id: data.id,
      title:data['title'],
      imgurl: data['imgurl']
    );

  }

  

  
  }
