import 'package:flutter/material.dart';


class Fromimage extends StatelessWidget {

  final String name;
  const Fromimage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;


    return Container(
      height: h*0.1,
      padding: const EdgeInsets.only(top: 20,left: 10,right: 20),

      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(name),fit: BoxFit.cover)
        
      ),
    );
  }
}