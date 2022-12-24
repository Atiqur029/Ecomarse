
import 'package:flutter/material.dart';

class TextDesgn  extends StatelessWidget {
  final String? text;
  final double ? fontsize;
  final FontWeight?fontWeight;
  final Color?color;

  const TextDesgn ({super.key, this.fontsize=14, this.fontWeight=FontWeight.bold, this.color=Colors.black, required this.text});

  @override
  Widget build(BuildContext context) {
     
    return Padding(padding: const EdgeInsets.only(left: 10,right: 10),
    child: Text(text!,style: TextStyle(fontSize: fontsize,fontWeight:fontWeight,color: color ),),

    
    
    
    
    );
  }
}                                    