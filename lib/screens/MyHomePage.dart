import 'package:facebook/components/my_container.dart';
import 'package:facebook/screens/group_tab.dart';
import 'package:facebook/screens/home_tab.dart';
import 'package:facebook/screens/notification_tab.dart';
import 'package:facebook/screens/profile_tab.dart';
import 'package:facebook/screens/setting_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState(); }
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const Color blue=Colors.blueAccent;
    return DefaultTabController(
      length:5,
      child: Scaffold(
        appBar:AppBar(
          systemOverlayStyle:SystemUiOverlayStyle(
            statusBarColor:Colors.white,
            statusBarIconBrightness:Brightness.dark,
            systemNavigationBarColor:Theme.of(context).scaffoldBackgroundColor,
            systemNavigationBarIconBrightness:Brightness.dark
          ),
          elevation:1,
          backgroundColor:Colors.white,
          actions: [
              const Expanded(flex:2,child: Padding(
                padding: EdgeInsets.only(left:10),
                child: Text('facebook',style:TextStyle(fontSize:26,color:blue,)),
              )),
            Expanded(
              flex:1,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  //components
                  MyContainer(icon: FontAwesomeIcons.plus),
                  MyContainer(icon:FontAwesomeIcons.search),
                  MyContainer(icon:FontAwesomeIcons.facebookMessenger,),
                ],
              ),
            )
          ],
          bottom:TabBar(
            indicatorColor:blue,
              labelColor:blue,
              unselectedLabelColor:Colors.black26,
              indicatorPadding:const EdgeInsets.symmetric(horizontal:4),
              labelPadding:const EdgeInsets.only(bottom:7),
              tabs:[
                const Icon(Icons.home,size:35,),
                const Icon(FontAwesomeIcons.userGroup,size:22,),
                const Icon(Icons.person_pin,size:33,),
                const Icon(FontAwesomeIcons.solidBell,size:26,),

                Stack(
                  children: [
                    Container(
                      height:33,
                      width:33,
                      decoration:  BoxDecoration(
                        shape:BoxShape.circle,
                        border:Border.all(
                          width:2,
                          color:Colors.grey
                        ),
                        image:const DecorationImage(
                            fit:BoxFit.cover,
                            image:AssetImage('assets/images/profilePic.jpg')),
                      ),
                    ),
                      Positioned(bottom:-1,right:-1,child:Container(
                        height:16,
                        width:16,
                        decoration:  BoxDecoration(
                          color:Colors.grey,
                          shape:BoxShape.circle,
                          border:Border.all(
                            width:1,
                            color:Colors.white
                          )
                        ),
                        child: const Icon(Icons.menu,color:Colors.white,size:12,)))
                  ],
                ),
          ]),
        ),
        body:const TabBarView(children:[
          HomeTab(),
          GroupTab(),
          ProfileTab(),
          NotificationTab(),
          SettingTab(),

        ])

      ),
    );
  }
}
