import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  String name;
  String text;
  var profilePic;
  var friend_one;
  var friend_two;

    Friends({Key? key,required this.name,required this.profilePic, required this.friend_one, required this.friend_two,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Padding(
      padding: const EdgeInsets.symmetric(horizontal:15,vertical:7),
      child: Row(
        children: [
          Container(
            height:100,
            width:100,
            decoration:  BoxDecoration(
              shape:BoxShape.circle,
              color:Colors.grey.withOpacity(0.7),
              image:  DecorationImage(
                  fit:BoxFit.cover,
                  image:NetworkImage(profilePic)),
            ),
          ),
          const SizedBox(width:10,),
          Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
                Text(name,style:const TextStyle(fontSize:18),),
              const SizedBox(height:5,),
              Row(
                children: [
                  Container(
                    height:30,
                    width:30,
                    decoration:BoxDecoration(
                        color:Colors.grey.withOpacity(0.7),
                        shape:BoxShape.circle,
                        image:  DecorationImage(
                            fit:BoxFit.cover,
                            image:NetworkImage(friend_one),
                        )),
                  ),
                  Container(
                    height:30,
                    width:30,
                    decoration:BoxDecoration(
                        color:Colors.grey.withOpacity(0.7),
                        shape:BoxShape.circle,
                        image:DecorationImage(
                            fit:BoxFit.cover,
                            image:NetworkImage(friend_two),
                        )),
                  ),
                  const SizedBox(width:5,),
                    Text(text,style:const TextStyle(color:Colors.black54),),
                ],
              ),
              const SizedBox(height:10,),
              Row(
                children: [
                  Container(
                    height:35,
                    width:130,
                    decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(6),
                        color:Colors.blueAccent
                    ),
                    child:const Center(child: Text('Confirm',style:TextStyle(fontSize:15,color:Colors.white),)),
                  ),
                  const SizedBox(width:10,),
                  Container(
                    height:35,
                    width:130,
                    decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(6),
                        color:Colors.grey.withOpacity(0.5)
                    ),
                    child:const Center(child: Text('Delete',style:TextStyle(fontSize:15,color:Colors.black),)),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
