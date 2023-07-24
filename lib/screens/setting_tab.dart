import 'package:facebook/components/menu_container.dart';
import 'package:facebook/components/my_container.dart';
import 'package:facebook/screens/profile_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffEef5f6),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12,vertical:10),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                const Text('Menu',style:TextStyle(fontSize:27),),
                Row(
                  children:[
                    MyContainer(icon:Icons.settings),
                    const SizedBox(width:10,),
                    MyContainer(icon:FontAwesomeIcons.search)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:12,right:12,top:30,bottom:10),
            child: Container(
              height:70,
              width:double.infinity,
              decoration:BoxDecoration(
                color:Colors.white,
                borderRadius:BorderRadius.circular(8),
                boxShadow:const [
                  BoxShadow(
                    color:Colors.black26,
                    blurRadius:3,
                    offset:Offset(0,1)
                  )
                ]
              ),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap:(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ProfileTab()));

                        },
                        child: Container(
                          height:45,
                          width:45,
                          decoration:  BoxDecoration(
                              shape:BoxShape.circle,
                              color:Colors.black26,
                              border:Border.all(
                                  color:Colors.black12
                              ),
                              image:const DecorationImage(
                                  fit:BoxFit.cover,
                                  image: AssetImage('assets/images/profilePic.jpg'))
                          ),
                        ),
                      ),
                      const SizedBox(width:15,),
                      const Text('Noman Khan',style:TextStyle(fontSize:18,),),
                    ],
                  ),
                  const SizedBox(width:20,),
                MyContainer(icon:FontAwesomeIcons.angleDown)
              ],),
            ),

          ),
          const Text('All shortcuts'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12,vertical:5),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MenuContainer(icon:FontAwesomeIcons.tv, iconColor:Colors.blue, text:'Video on Watch'),
                MenuContainer(icon:FontAwesomeIcons.bookmark, iconColor:Colors.pink, text:'Saved'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12,vertical:5),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MenuContainer(icon:FontAwesomeIcons.clapperboard, iconColor:Colors.deepOrange, text:'Reels'),
                MenuContainer(icon:FontAwesomeIcons.userGroup, iconColor:Colors.lightBlueAccent, text:'Groups'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12,vertical:5),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MenuContainer(icon:FontAwesomeIcons.users, iconColor:Colors.blue, text:'Friends'),
                MenuContainer(icon:FontAwesomeIcons.calendarCheck, iconColor:Colors.cyanAccent, text:'Feeds'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12,vertical:5),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MenuContainer(icon:FontAwesomeIcons.store, iconColor:Colors.green, text:'Marketplace'),
                MenuContainer(icon:FontAwesomeIcons.history, iconColor:Colors.pink, text:'Memories'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12,vertical:5),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                MenuContainer(icon:FontAwesomeIcons.dashboard, iconColor:Colors.orange, text:'Dashboard'),
                MenuContainer(icon:FontAwesomeIcons.calendar, iconColor:Colors.lightBlueAccent, text:'Events'),
              ],
            ),
          ),
          // see more
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12,vertical:10),
            child: Container(
              height:35,
              width:double.infinity,
              decoration:BoxDecoration(
                color:Colors.grey.withOpacity(0.25),
                borderRadius: BorderRadius.circular(5),
              ),
              child:const Center(child:Text('See more'),),
            ),
          ),
          //logout
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12,vertical:0),
            child: Container(
              height:35,
              width:double.infinity,
              decoration:BoxDecoration(
                color:Colors.grey.withOpacity(0.25),
                borderRadius: BorderRadius.circular(5),
              ),
              child:const Center(child:Text('Log Out'),),
            ),
          ),

        ],
      ),
    );
  }
}
