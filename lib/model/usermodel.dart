



import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  String?id;
  String?name;
  String?email;
  String?img;
  String?divition;
  String?district;
  String?phone;
  String?upozila;


  UserModel({
    this.id='',
    this.name,
    this.email,
    this.img,
    this.divition,
    this.district,
    this.phone,
    this.upozila,




  });

  factory UserModel.fromJson(DocumentSnapshot data){
    return UserModel(

      id: data.id,
      name: data["username"],
      email: data["useremail"],
      img: data["userimage"],
      divition: data["userdivition"],
      district: data["userdistrict"],
      phone: data["userphone"],
      upozila: data["userupozila"],

    );
    
  }

  


}