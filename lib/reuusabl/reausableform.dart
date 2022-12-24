// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class ReaUsableForm extends StatelessWidget {
  final TextEditingController controlar;
  final String ?hintext;
  final Function(String?)? onsave;
  final TextInputType?type;
  final Widget? prefixIcon;
  final  bool isbool;
  final String ?Function(String?)?validator;

  const ReaUsableForm({super.key, required this.controlar,  this.hintext,  this.onsave,  this.type,  this.prefixIcon, this.validator,   this.isbool=false});
  
  
  @override
  Widget build(BuildContext context) {
     double h=MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Container(
        height:h*0.08 ,
        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                offset: const Offset(1, 1),
                                color: Colors.grey.withOpacity(0.5))]),
        child: TextFormField(
          controller:controlar ,
          keyboardType:type ,
          onSaved:onsave ,
          obscureText: isbool?isbool:false,
          validator:validator ,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 1.0)),enabledBorder:  const OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 1.0)),
            prefixIcon: prefixIcon,
            prefixIconColor: Colors.amber,
            hintText: hintext,hintStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)
          ),
      
      
      
        ),
      
    ));
  }
}
