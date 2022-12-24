// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class Product {

  String ?id;
 
  
  String?name;
  String?description;
  String?img;
  String?oldprice;

  String?price;
  String?quantity;
  String?catagory;
  String?subcatagory;
  String?brand;


  Product({
    this.id='',
    this.name,
    this.description,
    this.img,
    this.oldprice,
    this.price,
    
    this.quantity,
    this.catagory,
    this.subcatagory,
    this.brand
  });


  Map<String,dynamic> tojson()=>{

    "id":id,
    "name":name,
    "description":description,
    "img":img??"",
    "oldprice":oldprice,
    "price":price,
    "quantity":quantity,
    "catagory":catagory,
    "subcatagory":subcatagory,
    "brand":brand


  };

  factory Product.fromJson(DocumentSnapshot data){
    return Product(
      id: data.id,
      name: data['name'],
      description: data["description"],
      img: data["img"]??"",
      oldprice: data["oldprice"],
      price: data["price"],
      quantity: data["quantity"],
      catagory: data["catagory"],
      subcatagory:data["subcatagory"],
      brand: data["brand"]








    );
  }

  String? get getid=>id??"";
  String? get getname =>name??"";
  String? get getdescription=>description??"";
  String? get getimg =>img??"";
  String? get getoldprice=>oldprice??"";
  String? get getprice=>price??"";
  String? get getquantity =>quantity??"";
  String? get getcatagory=>catagory??"";
  String? get getsubcatagory => subcatagory??"";
  String? get getbrand => brand??"";

  void setid(String id)=>this.id=id;
  void setname(String name)=>this.name=name;
  void setdescription(String description)=>this.description=description;
  void setimg(String img)=>this.img=img;
  void setoldprice(String oldprice)=>this.oldprice=oldprice;

  void setprice(String price)=>this.price=price;
  void setquantity(String quantity)=>this.quantity=quantity;
  void setcatagory(String catagory)=>this.catagory=catagory;
  void setsubcatagory(String subcatagory)=>this.subcatagory=subcatagory;
  void setbrand(String brand)=>this.brand=brand;






}
