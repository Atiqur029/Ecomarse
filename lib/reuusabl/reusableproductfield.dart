import 'package:flutter/material.dart';

class ReausableProductfield extends StatelessWidget {

  final String labeltext;
  final String hintext;
  final void Function(String?)? onSaved;
  final int?maxline;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  final TextInputType? inputtype;
  final void Function(String)? onChanged;
  const ReausableProductfield({

    Key? key, required this.labeltext, required this.hintext, this.validator, this.inputtype=TextInputType.text, this.onChanged, this.maxline=1, this.onSaved,this.controller 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      onChanged:onChanged ,
      maxLines:maxline ,
    
      decoration:  InputDecoration(
        labelText: labeltext,
        hintText: hintext
      ),
      validator: validator,
      keyboardType: inputtype,
      onSaved: onSaved,
      controller:  controller,
      
      
    );
  }
}