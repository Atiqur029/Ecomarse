


import 'dart:io';


import 'package:e_comarse/model/catagori.dart';

import 'package:e_comarse/reuusabl/reusableproductfield.dart';
import 'package:e_comarse/services/database.dart';
import 'package:e_comarse/widget/toastmsg.dart';
import 'package:flutter/material.dart';



import 'package:image_picker/image_picker.dart';

class AddCatagory extends StatefulWidget {
 const AddCatagory({super.key});

  @override
  State<AddCatagory> createState() => _AddCatagoryState();

 


 

}

class _AddCatagoryState extends State<AddCatagory> {
  @override
  Widget build(BuildContext context) { 
    // final namecontrolar=TextEditingController();
    // final descriptionconrolar=TextEditingController();
    // final oldpricecontrolar=TextEditingController();
    // final currentpriceControlar=TextEditingController();
    // final quantitycontrolar=TextEditingController();
    // final catagoryconrolar=TextEditingController();
    // final subcatagorycontrolar=TextEditingController();
    // final brandnameontrolar=TextEditingController();   
    final Catagoris catagori=Catagoris();
    final fromkey=GlobalKey<FormState>();



    // Future<void>pickcatagoryimg( ImageSource source) async{

    //   final img=await ImagePicker().pickImage(source: source);

    //   if(img==null){
    //     return;
    //   }

    //   File? pickimage=File(img.path);

    //   setState(() {
    //     _imagefile=pickimage;
    //   });


 


  
 

      
    
   
           
    return Scaffold(
      appBar: AppBar(title: const Text("Add Catagory"),centerTitle: true,),
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
                

             

            // Container(
            //   height: 200,
              
            //   decoration: BoxDecoration(
            //     color: Colors.redAccent,
            //     borderRadius: BorderRadius.circular(15),
            //     image: _imagefile==null? const DecorationImage(image: NetworkImage("https://icms-image.slatic.net/images/ims-web/3c2f3b53-fcaa-4ca0-9c62-99f759036a86.jpg_1200x1200.jpg")):DecorationImage(image: FileImage(File(_imagefile.path)))
            // )),


            // Row(
            //   children: [
            //     IconButton(onPressed: (() async{
            //       await pickimage(ImageSource.gallery);
                  
            //     }), icon: CircleAvatar(
            //       backgroundColor: Colors.white,
                  
            //       child: Image.asset("asset/img/galary.png",height: 50,))),

            //       const SizedBox(width: 10,),
            //       IconButton(onPressed: (() async{
            //       await pickimage(ImageSource.camera);
                  
            //     }), icon: const Icon(Icons.camera_alt_outlined))

                  

              
            
          
              
          ReausableProductfield(
            labeltext: "Catagory Name",
            
             onChanged: (v) {
              catagori.setname(v);
              
            },
            hintext: "Catagori name",
            validator: ((value) {
             if( value==null ||value.isEmpty|| value.length<2){
             return "Please Enter Some Product";
      
        }
        return null;
            
          }),),

          
        const SizedBox(height: 20,),

        ElevatedButton(onPressed: (() {
          if(fromkey.currentState!.validate()){
            fromkey.currentState!.save();
            Database database=Database();
            database.uploadImage(imgfile: _image9,onsucess: (url){
              
               catagori.setimgurl(url);
               database.addCatagory(catagoris: catagori);
               

            },imagePath: "imgurl");
            
            
            //database.addData(product: product);
            toastmessege(context, "Add Sucessfully Done");

           

              fromkey.currentState!.reset();
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

          
        }), child: const Text("Add  Catagori"))

          
      
        ]
        
        ),),
      )
      
    );
  }



  // File ?imgefile;

  //  getcameraimage()async{

  //   final image= await ImagePicker().pickImage(source: ImageSource.camera);

  //   if (image ==null)return;

  //   File?img=File(image.path);

  //   setState(() {
  //     imgefile=img;
  //   });
  //  }
  // File? _image9;
  
  // pickimage( ImageSource source)async{
    

  //   final image9 = await ImagePicker().pickImage(
  //                 source: source, imageQuality: 100
  //     );
  //          if(image9 == null) return;
  //           File? img9 = File(image9.path);

  //             setState(() {
  //                    _image9 = img9;
  //                });

  // }

    File? _image9;
  
    pickimage( ImageSource source)async{
    

           final image9 = await ImagePicker().pickImage(
                  source: source, imageQuality: 100);
      
           if(image9 == null) return;
            File? img9 = File(image9.path);

              setState(() {
                     _image9 = img9;
                 });

  }
 


  
}

