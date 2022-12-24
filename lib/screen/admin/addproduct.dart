

import 'dart:io';

import 'package:e_comarse/model/product.dart';
import 'package:e_comarse/reuusabl/reusableproductfield.dart';
import 'package:e_comarse/services/database.dart';
import 'package:e_comarse/widget/toastmsg.dart';
import 'package:flutter/material.dart';


import 'package:image_picker/image_picker.dart';

class AddProduct extends StatefulWidget {
 const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();

 


 

}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) { 
    //  final ImageControlar _imageControlar=Get.put(ImageControlar());
    // File?pickedfile;
    // ImagePicker _imagePicker=ImagePicker();

    // Future<void> takePhoto(ImageSource gallery) async {

    // final pickImage=await _imagePicker.pickImage(source: gallery,imageQuality: 100);
    // pickedfile=File(pickImage!.path);
    // _imageControlar.profilepickpath(pickedfile!.path);

    // // setState(() {
    // //   pickedfile=imagtemprorary;
    // // });

    // // print(pickedfile);

  

   

  
    final namecontrolar=TextEditingController();
    final descriptionconrolar=TextEditingController();
    final oldpricecontrolar=TextEditingController();
    final currentpriceControlar=TextEditingController();
    final quantitycontrolar=TextEditingController();
   
    final subcatagorycontrolar=TextEditingController();
    final brandnameontrolar=TextEditingController();   
    final Product product=Product();
    final fromkey=GlobalKey<FormState>();



   
    

    return Scaffold(
      appBar: AppBar(title: const Text("Add Product"),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Form(
          key: fromkey,
          child: ListView(children: [

            const SizedBox(
              height: 20,

            ),

            Column(

              
              children: [
               (_image9==null)?
                Container(
                  height: 200,
                
                  color: Colors.grey,
                  
                  
                ):Image.file(_image9!,height: 200,fit: BoxFit.cover,),
                MaterialButton(
                  color: Colors.yellow,
                  onPressed: (() async{
                  await pickimage(ImageSource.gallery);
                  
                  
                }),child: const Text("Pick Image From Galary"),),

                MaterialButton(
                  color: Colors.yellow,
                  onPressed: (() async{
                  await pickimage(ImageSource.camera);
                  
                  
                }),child: const Text("Pick Image From Cemera"),),
                

                 
              
              ],
            ),
          
              
          ReausableProductfield(
            labeltext: "Product Name",
            maxline: 2,
            controller: namecontrolar,
            onChanged: (v) {
              product.setname(v);
              
            },

            hintext: "Add a Product",
           
           
            
            validator: ((value) {
             if( value==null ||value.isEmpty|| value.length<2){
          return "Please Enter Some Product";
      
        }
        return null;
            
          }),),

          const SizedBox(height: 20,),
           ReausableProductfield(
            controller: descriptionconrolar,
            labeltext: "Description",
            maxline: 3,
             onSaved: (v) {
              product.description=v;
              
              
            },
          
            hintext: "Add a Description",
            
            
            validator: ((value) {
             if( value==null ||value.isEmpty|| value.length<2){
             return "Please Descrption";
      
        }
        return null;
            
          }),),


           const SizedBox(height: 20,),
           ReausableProductfield(
              controller: oldpricecontrolar,
              labeltext: "Price",
              hintext: "old price",
              onSaved: (v) {
                   product.oldprice=v;  
            },
          inputtype: TextInputType.number,
            
          validator: ((value) {
             if( value==null ||value.isEmpty|| value.length<2){
          return "Please add oldprice";
      
        }
             return null;
        
            
          }),),
          const SizedBox(height: 20,),
           ReausableProductfield(
            controller: currentpriceControlar,
            labeltext: "Price",
             onSaved: (v) {
              product.price=v;
              
              
            },
             hintext: "Add a Price",
           
            inputtype: TextInputType.number,
            
            validator: ((value) {
             if( value==null ||value.isEmpty|| value.length<2){
              return "Please add price";
      
              }
             return null;
            
          }),),
          const SizedBox(height: 20,),
           ReausableProductfield(
            controller: quantitycontrolar,
        
            labeltext: "Quantity",
             onSaved: (v) {
              product.quantity=v;
              
              
              
            },
            hintext: "Add a Quantity",
            inputtype: TextInputType.number,
            
            validator: ((value) {
             if( value==null ||value.isEmpty){
          return "Please product Quantity add";
      
        }
             return null;
        
            
          }),),

          const SizedBox(height: 20,),
          //Catagoris
          DropdownButtonFormField(
            value: product.catagory,
            decoration: const InputDecoration(labelText: "Catagory"),
            // items: List.generate( catagorilist.length, (index) {

            //   //Catagoris catagoriss=catagorilist[index];
            //   return DropdownMenuItem(value: catagorilist[index].getid,
            //   child:Text(catagorilist[index].getname.toString()) ,);
            // }),
            
             items: const [
              DropdownMenuItem(value: "Food",child: Text("Food")),
              DropdownMenuItem(value: "Mobile",child: Text("Mobile")),
              DropdownMenuItem(value: "Sports",child: Text("Sports")),
              DropdownMenuItem(value: "Electronics",child: Text("Electronics")),
              DropdownMenuItem(value: "Electric",child: Text("Electric")),
              DropdownMenuItem(value: "Electric",child: Text("Electric")),




             ], 
            onChanged: ((value) {
              product.setcatagory(value!);
             
              
            })),

           const SizedBox(height: 20,),
           
           
           ReausableProductfield(
            controller: subcatagorycontrolar,
           
            
            onSaved: ((v) {
              product.subcatagory=v;
              
            }),
            maxline: 2,
            labeltext: "SubCatagory",
            hintext: "Add a SubCatagory",
          
            
            validator: ((value) {
             if( value==null ||value.isEmpty|| value.length<2){
                return "Please Subcatagory added";
      
          }
             return null;
          //return null;
            
          }),),

          const SizedBox(height: 20,),
           ReausableProductfield(
            controller: brandnameontrolar,
            labeltext: "BrandName",
             onSaved: ((v) {
             product.brand=v;

              
            }),
            hintext: "Add BrandName",
            
            validator: ((value) {
             if( value==null ||value.isEmpty|| value.length<2){
          return "Please add BrandName";
      
                }
             return null;
      
            
          }),),

        const SizedBox(height: 20,),

        ElevatedButton(onPressed: (() {
          if(fromkey.currentState!.validate()){
            fromkey.currentState!.save();
            Database database=Database();
            database.uploadImage(imgfile: _image9,onsucess: (url){
              
               product.setimg(url);
               database.addData(product: product);
               

            },imagePath: "product_img");
            
            
            //database.addData(product: product);
            toastmessege(context, "Add Sucessfully Done");

           

              fromkey.currentState!.reset();
              namecontrolar.clear();
                //namecontrolar.clear()
                // descriptionconrolar.clear();
                // oldpricecontrolar.clear();
                // currentpriceControlar.clear();
                // quantitycontrolar.clear();
                // catagoryconrolar.clear();
                // subcatagorycontrolar.clear();
                // brandnameontrolar.clear(); 
                // product.setimg(img).clear;




          }

          
        }), child: const Text("Add  Product"))

          
      
        ]
        
        ),),
      )
      
    );
  }



  File ?imgefile;

  //  getcameraimage()async{

  //   final image= await ImagePicker().pickImage(source: ImageSource.camera);

  //   if (image ==null)return;

  //   File?img=File(image.path);

  //   setState(() {
  //     imgefile=img;
  //   });
  //  }
  File? _image9;
  
  pickimage( ImageSource source)async{
    

    final image9 = await ImagePicker().pickImage(
                  source: source, imageQuality: 50
      );
           if(image9 == null) return;
            File? img9 = File(image9.path);

              setState(() {
                     _image9 = img9;
                 });

  }
 


  
}

