import 'package:flutter/material.dart';


class ReaUsableButton extends StatelessWidget {

 final  Widget? child;
 final Function()?onPreesed;
  const ReaUsableButton({super.key, this.child, this.onPreesed});


  @override
  Widget build(BuildContext context) {
   double h=MediaQuery.of(context).size.height;

      
    return Container(
      height: h*0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),

      child: ElevatedButton(onPressed: onPreesed, child: child));
  }
}