


import 'package:cloud_firestore/cloud_firestore.dart';

class Catagoris {

   String? id;
   String ?name;
   String ?imgurl;
  Catagoris({
  this.id='',
   this.name,
   this.imgurl,
  });

  




  Catagoris copyWith({
    String? id,
    String? name,
    String? imgurl,
  }) {
    return Catagoris(
      id: id ?? this.id,
      name: name ?? this.name,
      imgurl: imgurl ?? this.imgurl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imgurl': imgurl,
    };
  }

  factory Catagoris.fromMap(DocumentSnapshot data) {
    return Catagoris(
      id: data.id,
     
      name: data["name"],                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
      imgurl: data['imgurl'] 
    );
  }

 //String? get getid(DocumentSnapshot data)id??"";
 String? get getid=>id??"";

 String? get getname=>name??"";
 String? get getimgurl=>imgurl??"";
 

 void setid(String id)=>this.id=id;
 
void setname(String name)=>this.name=name;
void setimgurl(String? imgurl)=>this.imgurl=imgurl;



  

}



