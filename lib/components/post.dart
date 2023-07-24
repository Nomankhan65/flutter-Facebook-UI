import 'package:facebook/screens/friends_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget {
  var profilPic;
  var postPic;
  var name;
  var time;
    Post({Key? key,required this.name,required this.time, required this.profilPic, required this.postPic}) : super(key: key);

  @override
  Widget build(context) {
    return   Column(
      children: [
        ListTile(
          leading: InkWell(
            onTap:()
            {
              Navigator.of(context).push(MaterialPageRoute(builder:
                  (context)=>FriendProfile(
                      name: name,
                      profilePic:profilPic,
                      coverPic:postPic)));
            },
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color:Colors.grey.withOpacity(0.7),
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(profilPic)),
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text(
                name,
                style: const TextStyle(fontSize: 18),
              ),
              Row(
                children: const [
                  Icon(FontAwesomeIcons.ellipsis),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(FontAwesomeIcons.xmark)
                ],
              )
            ],
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              Text(time),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.circle,
                size: 3,
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                FontAwesomeIcons.earthAsia,
                size: 12,
              )
            ],
          ),
        ),
        Container(
          height: 320,
          width:double.infinity,
          decoration: BoxDecoration(
            color:Colors.grey.withOpacity(0.7),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(postPic
              ))),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal:10,vertical:10),
          child: Divider(
            thickness:1,
          ),
        ),
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.thumb_up_outlined),
            Text('Like'),
            Icon(FontAwesomeIcons.comment),
            Text('Comments'),
            Icon(Icons.send),
            Text('Share')
          ],
        ),
        const SizedBox(height:15,)
      ],
    );

  }
}
