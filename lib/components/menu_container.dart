import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuContainer extends StatelessWidget {
  var icon;
  Color iconColor;
  String text;
    MenuContainer({Key? key,required this.icon,required this.iconColor, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:80,
      width:190,
      decoration:BoxDecoration(
          color:Colors.white,
          borderRadius:BorderRadius.circular(8),
          boxShadow:const [
            BoxShadow(
                color:Colors.black26,
                blurRadius:5,
                offset:Offset(0,1)
            )
          ]
      ),
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal:15,vertical:12),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children:[
            Icon(icon,size:25,color:iconColor,),
            Text(text,style:const TextStyle(fontSize:16),)
          ],
        ),
      ),
    );
  }
}
