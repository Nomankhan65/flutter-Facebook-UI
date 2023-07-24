import 'package:facebook/screens/story_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  var profilePic;
  var story;
  String name;
  Stories({Key? key,required,required this.name,required this.profilePic,required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:(){
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>StoryScreen(name:name,profilPic:profilePic, storyPic:story)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:3,vertical:10),
        child: Container(
          height:215,
          width:115,
          decoration: BoxDecoration(
            color:Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
                width: 1,
              ),
              image:DecorationImage(
                  fit:BoxFit.cover,
                  image:NetworkImage(story))
          ),
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height:40,
                  width:40,
                  decoration: BoxDecoration(
                    color:Colors.white24,
                      image:DecorationImage(
                          fit:BoxFit.cover,
                          image:NetworkImage(profilePic)),
                      shape:BoxShape.circle,
                      border:Border.all(
                          color:Colors.blue,
                          width:2
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(name,style:const TextStyle(color:Colors.white,shadows:[
                  Shadow(
                    color:Colors.grey,
                    offset:Offset(1, 1),
                    blurRadius:2,
                  )
                ]),),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
