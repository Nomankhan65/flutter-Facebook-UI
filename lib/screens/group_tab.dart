import 'package:facebook/components/friends.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class GroupTab extends StatelessWidget {
  const GroupTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12,vertical:12),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: const [
                Text('Friends',style:TextStyle(fontSize:25),),
                Icon(Icons.search,size:35,)
              ],
            ),
          ),
          Column( 
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:12,vertical:12),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Friend Requests',style:TextStyle(fontSize:19),),
                    Text('See All',style:TextStyle(color:Colors.lightBlue,fontSize:16),),
                  ],
                ),
              ),
              Friends(
               name:'Kapoor',
               text:'10 mutual friends',
               profilePic:'https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
               friend_one:'https://images.pexels.com/photos/842811/pexels-photo-842811.jpeg?auto=compress&cs=tinysrgb&w=600',
               friend_two:'https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=600' ,
            ),
              Friends(
                name:'Json Roy',
                text:'2 mutual friends',
                profilePic:'https://images.pexels.com/photos/3911368/pexels-photo-3911368.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                friend_one:'https://images.pexels.com/photos/8937608/pexels-photo-8937608.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                friend_two:'https://images.pexels.com/photos/3777570/pexels-photo-3777570.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load' ,
              ),
              Friends(
                name:'John',
                text:'19 mutual friends',
                profilePic:'https://images.pexels.com/photos/7567491/pexels-photo-7567491.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                friend_one:'https://images.pexels.com/photos/8937585/pexels-photo-8937585.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                friend_two:'https://images.pexels.com/photos/2283279/pexels-photo-2283279.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load' ,
              ),
              Friends(
                name:'Sheraz',
                text:'1 mutual friends',
                profilePic:'https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?auto=compress&cs=tinysrgb&w=600',
                friend_one:'https://images.pexels.com/photos/842811/pexels-photo-842811.jpeg?auto=compress&cs=tinysrgb&w=600',
                friend_two:'https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=600' ,
              ),
              Friends(
                name:'Faizan',
                text:'32 mutual friends',
                profilePic:'https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=600',
                friend_one:'https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?auto=compress&cs=tinysrgb&w=600',
                friend_two:'https://images.pexels.com/photos/3777570/pexels-photo-3777570.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load' ,
              ),
            ],
          )
        ],
      ),
    );
  }
}
