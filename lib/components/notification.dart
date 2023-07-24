import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNotification extends StatelessWidget {
  String name;
  String text;
  var profilePic;
  var icon;
  Color bgColor;
   MyNotification({Key? key,required this.name,required this.text,required this.profilePic,required this.icon,required this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height:80,
            width:80,
            decoration: BoxDecoration(
                shape:BoxShape.circle,
                color:Colors.black26,
                image:DecorationImage(
                    fit:BoxFit.cover,
                    image:NetworkImage(profilePic))
            ),
            child:Stack(
              children: [
                Positioned(
                    right:1,
                    bottom:1,
                    child:Container(
                        height:30,
                        width:30,
                        decoration:BoxDecoration(
                            shape:BoxShape.circle,
                            color:bgColor
                        ),
                        child:   Icon(icon,color:Colors.white,)))
              ],
            ),
          ),
          const SizedBox(width:10,),
          Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            crossAxisAlignment:CrossAxisAlignment.start,
            children:   [
              Text(name,style:const TextStyle(fontSize:17),),
              Text(text,style:const TextStyle(fontSize:16,color:Colors.black54),),
            ],
          ),

        ],),
    );
  }
}
