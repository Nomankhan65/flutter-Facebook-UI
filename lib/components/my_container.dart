import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyContainer extends StatelessWidget {
  var icon;
 MyContainer({Key? key,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
        height:35,
        width:35,
        decoration:  BoxDecoration(
          shape:BoxShape.circle,
          color:Colors.grey.withOpacity(0.15),
        ),
        child:  Icon(icon,color:Colors.black,size:20,));
  }
}
