import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FriendProfile extends StatelessWidget {
  String name;
  var profilePic;
  var coverPic;
    FriendProfile({Key? key,required this.name,required this.profilePic,required this.coverPic}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return   Scaffold(
        body: Column(
        children: [
          Container(
            height:280,
            width:double.infinity,
            decoration: BoxDecoration(
                color:Colors.black26,
                image:DecorationImage(
                    fit:BoxFit.cover,
                    image:NetworkImage(coverPic))
            ),
            child:Stack(
              clipBehavior:Clip.none,
              children: [
                Positioned(
                    bottom:-80,
                    left:120,
                    child:  Container(
                      height:180,
                      width:180,
                      decoration:BoxDecoration(
                          shape:BoxShape.circle,
                          border:Border.all(
                              width:5,
                              color:Colors.white
                          ),
                          image: DecorationImage(
                              fit:BoxFit.cover,
                              image:NetworkImage(profilePic))
                      ),

                    ) ),
                Positioned(
                    bottom:-70,
                    right:120,
                    child:Container(
                      height:40,
                      width:40,
                      decoration:  BoxDecoration(
                        shape:BoxShape.circle,
                        color:Colors.grey.withOpacity(0.7),
                      ),
                      child:const Icon(Icons.camera_alt),
                    )),
                Positioned(
                    right:20,
                    bottom:20,
                    child:Container(
                      height:40,
                      width:40,
                      decoration:  const BoxDecoration(
                        shape:BoxShape.circle,
                        color:Colors.grey,
                      ),
                      child:const Icon(Icons.camera_alt),
                    ))

              ],
            ),
          ),
          const SizedBox(height:90,),
            Text(name,style:const TextStyle(fontSize:25),),
          const SizedBox(height:10),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: const [
              Text('7.6K'),
              SizedBox(width:3,),
              Text('Followers',style:TextStyle(color:Colors.black54),),
              SizedBox(width:10,),
              Text('0'),
              SizedBox(width:3,),
              Text('Following',style:TextStyle(color:Colors.black54),)
            ],),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:8,right:6,top:15,bottom:5),
                child: Container(
                  height:40,
                  width:190,
                  decoration:BoxDecoration(
                      color:Colors.blueAccent,
                      borderRadius:BorderRadius.circular(6)
                  ),
                  child:const Center(child: Text('Add to Story',style:TextStyle(fontSize:16,color:Colors.white),)),
                ),
              ),
              Padding(
                padding: const  EdgeInsets.only(left:6,right:6,top:15,bottom:5),
                child: Container(
                  height:40,
                  width:190,
                  decoration:BoxDecoration(
                      color:Colors.black12,
                      borderRadius:BorderRadius.circular(6)
                  ),
                  child:const Center(child: Text('See dashboard',style:TextStyle(fontSize:16,color:Colors.black87),)),
                ),
              ),

            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8,vertical:5),
                child: Container(
                  height:40,
                  width:320,
                  decoration:BoxDecoration(
                      color:Colors.black12,
                      borderRadius:BorderRadius.circular(6)
                  ),
                  child:  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.edit),
                      SizedBox(width:10,),
                      Text('Edit',style:TextStyle(fontSize:16,color:Colors.black87),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:0,vertical:5),
                child: Container(
                    height:40,
                    width:65,
                    decoration:BoxDecoration(
                        color:Colors.black12,
                        borderRadius:BorderRadius.circular(6)
                    ),
                    child:const Center(child:Icon(FontAwesomeIcons.ellipsis))
                ),
              ),

            ],
          ),
          const SizedBox(height:10),
          Divider(
            color: Colors.grey.withOpacity(0.4),
            thickness: 13,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children:
              [
                Container(
                    height:35,width:75,
                    decoration:BoxDecoration(color:Colors.blue.withOpacity(0.2),borderRadius:BorderRadius.circular(50)),
                    child: const Center(child: Text('Posts',style:TextStyle(fontSize:17,color:Colors.blue),))),
                const Text('About',style:TextStyle(fontSize:17)),
                const Text('Videos',style:TextStyle(fontSize:17 )),
                const Text('More',style:TextStyle(fontSize:17 )),
              ],
            ),
          ),
          const Divider(color:Colors.black26,),
          const SizedBox(height:10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.start,
            children: const [
              SizedBox(width:20,), Text('Details',style:TextStyle(fontSize:21)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:17,vertical:20),
            child: Row(
              children: const [
                Icon(Icons.error_outlined,color:Colors.grey,),
                SizedBox(width:10,),
                Text('Profile',style:TextStyle(fontSize:17),),
                SizedBox(width:5,),
                Icon(Icons.circle,size:4,),
                SizedBox(width:5,),
                Text('Digital creator',style:TextStyle(fontSize:16,color:Colors.black54),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:17),
            child: Row(
              children: const [
                Icon(Icons.link,color:Colors.grey,),
                SizedBox(width:10,),
                Text('Developer.com',style:TextStyle(fontSize:17,color:Colors.blueAccent,),),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:17,vertical:20),
            child: Row(
              children: const [
                Icon(Icons.perm_contact_calendar_rounded,color:Colors.grey,),
                SizedBox(width:10,),
                Text('About info',style:TextStyle(fontSize:17,),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
