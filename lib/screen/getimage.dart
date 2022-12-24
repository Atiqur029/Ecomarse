
import 'package:e_comarse/model/usermodel.dart';
import 'package:flutter/material.dart';

class GetImage extends StatelessWidget {
  
  final UserModel user;

  const GetImage({super.key, required this.user});

  

  @override
  Widget build(BuildContext context) {

    
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.height;
    return  Stack(
            children: [
              
              Positioned(

               
                child: Center(
                  child: Container(
                    
                  height:h*0.19 ,//150,
                  width: w*0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage(user.img!),fit: BoxFit.cover)
                  ),
                            ),
                ),
              ),

              Positioned(
                top: h*0.133,//105,
                left: w*0.28,//220,
                
                
                child: Center(child: CircleAvatar(
                   backgroundColor: Colors.white,
                  child: IconButton(onPressed: () {},icon: const Icon(Icons.camera_alt,size: 30,),))))

            
          
        ]


      
        );
  }
}