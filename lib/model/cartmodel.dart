

import 'package:cloud_firestore/cloud_firestore.dart';

class CartProduct{

  String? id;
  String?name;
  String?price;
  String?quantity;
  String?img;

  CartProduct({this.id,this.name,this.price,this.quantity,this.img});


 factory CartProduct.fromJson( DocumentSnapshot data){

  return CartProduct(
    id:data.id,
    name: data["name"],
    price: data["price"],
    quantity: data["quantity"],
    img:data["img"]
  );

  
 }

 Map<String,dynamic> toMap()=>{

  "id":id,
  "name":name,
  "price":price,
  "quantity":quantity,
  "img":img,

 };

}