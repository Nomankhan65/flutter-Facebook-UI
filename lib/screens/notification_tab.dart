import 'package:facebook/components/my_container.dart';
import 'package:facebook/components/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10,vertical:8),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:   [
              const Text('Notifications',style:TextStyle(fontSize:25),),
              MyContainer(icon:FontAwesomeIcons.search)
            ],
          ),
        ),
        MyNotification(
            name:'Elon Musk Was Live: Live Stream',
            text:'BBC News new york Today at \n 3:00 pm ',
            profilePic:'https://images.pexels.com/photos/2182970/pexels-photo-2182970.jpeg?auto=compress&cs=tinysrgb&w=600',
            icon:Icons.video_call,
            bgColor:Colors.redAccent),
        MyNotification(
            name:'Asmussen message in EasyCoding',
            text:'How to earn money with coding\n Yesterday at 12:00 am ',
            profilePic:'https://images.pexels.com/photos/2505026/pexels-photo-2505026.jpeg?auto=compress&cs=tinysrgb&w=600',
            icon:Icons.group,
            bgColor:Colors.blue),
        MyNotification(
            name:'Andrea Piacquadio Posted in BC',
            text:'Bussines make men perfect in life\n Yesterday at 10:30 am ',
            profilePic:'https://images.pexels.com/photos/925786/pexels-photo-925786.jpeg?auto=compress&cs=tinysrgb&w=600',
            icon:Icons.account_box,
            bgColor:Colors.blue),
        MyNotification(
            name:'Elon Musk Was Live: Live Stream',
            text:'BBC News new york Today at \n 3:00 pm ',
            profilePic:'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&w=600',
            icon:Icons.video_call,
            bgColor:Colors.redAccent),
        MyNotification(
            name:'Asmussen message in EasyCoding',
            text:'How to earn money with coding\n Yesterday at 12:00 am ',
            profilePic:'https://images.pexels.com/photos/4347368/pexels-photo-4347368.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            icon:Icons.message,
            bgColor:Colors.green),
        MyNotification(
            name:'Andrea Piacquadio Posted in BC',
            text:'Bussines make men perfect in life\n Yesterday at 10:30 am ',
            profilePic:'https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=600',
            icon:Icons.video_camera_front_rounded,
            bgColor:Colors.blue),
             ],
    );
  }
}
