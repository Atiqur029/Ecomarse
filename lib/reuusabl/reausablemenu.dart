

import 'package:flutter/material.dart';


class ReaUsableMenu extends StatelessWidget {
  final Function()?onTap;
  final Widget ? leading;
  final Widget ?title;
  final Widget?trailing;
   


  const ReaUsableMenu({super.key, this.onTap, this.leading, this.title, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(left: 20,right: 20),
          decoration: BoxDecoration(
            
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

            boxShadow: const [
              BoxShadow(
                blurRadius: 7,
                spreadRadius: 5,
                offset: Offset(0, 3)
              )
            ]
          ),
          
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              onTap: onTap,
              leading: leading,//const Icon(Icons.person),
              title: title,//Text(user.name!),
              trailing:trailing, //const Icon(Icons.arrow_forward_ios_outlined),
          
            ),
          ),
        );


    
  }
}