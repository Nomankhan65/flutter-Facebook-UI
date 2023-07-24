import 'package:facebook/screens/friends_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class StoryScreen extends StatelessWidget {
  var profilPic;
  var storyPic;
  String name;
    StoryScreen({Key? key,required this.name,required this.profilPic,required this.storyPic,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body:SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top:20,bottom:0,left:13,right:13),
              child: Divider(
                color:Colors.white60,
                thickness:2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8,horizontal:15),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FriendProfile(
                              name: name,
                              profilePic:profilPic,
                              coverPic:storyPic
                          )));
                        },
                        child: Container(
                          height:40,
                          width:40,
                          decoration:BoxDecoration(
                            color:Colors.white24,
                              shape:BoxShape.circle,
                              image:DecorationImage(
                                  fit:BoxFit.cover,
                                  image:NetworkImage(profilPic))
                          ),
                        ),
                      ),
                      const SizedBox(width:10,),
                      Text(name,style:const TextStyle(color:Colors.white,fontSize:16),),
                      const SizedBox(width:10,),
                      const Text('23 hrs',style:TextStyle(color:Colors.white70),),
                      const SizedBox(width:10,),
                      const Icon(FontAwesomeIcons.earthAsia,color:Colors.white60,size:12,),
                    ],
                  ),

                  InkWell(
                      onTap:()
                      {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(FontAwesomeIcons.xmark,color:Colors.white70,)),
                ],
              ),
            ),
             const SizedBox(height:50,),
             Container(
              width:double.infinity,
              height:600,
              decoration:BoxDecoration(
                color:Colors.white24,
                image:DecorationImage(
                    fit:BoxFit.cover,
                    image:NetworkImage(storyPic)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
