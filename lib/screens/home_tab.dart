import 'package:facebook/components/post.dart';
import 'package:facebook/components/stories.dart';
import 'package:facebook/screens/profile_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    const Color blue = Colors.blueAccent;
    var alexJordan =
        'https://images.pexels.com/photos/839011/pexels-photo-839011.jpeg?auto=compress&cs=tinysrgb&w=600';
    var eliana =
        'https://images.pexels.com/photos/1963075/pexels-photo-1963075.jpeg?auto=compress&cs=tinysrgb&w=600';
    var andrea =
        'https://images.pexels.com/photos/3760263/pexels-photo-3760263.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
    var elonMusk =
        'https://images.pexels.com/photos/50855/pexels-photo-50855.jpeg?auto=compress&cs=tinysrgb&w=600';
    var sophia =
        'https://images.pexels.com/photos/5047406/pexels-photo-5047406.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load';
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ProfileTab()));
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 0.5,
                        color: Colors.grey,
                      ),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/profilePic.jpg')),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.withOpacity(0.6),
                    ),
                  ),
                  child: Center(
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: const [
                          SizedBox(width:20,),
                          Text(
                    "What's on your mind?",
                    style: TextStyle(
                          fontSize: 16,
                          color:Colors.black54,
                    ),
                  ),
                        ],
                      )),
                ),
                const Icon(
                  FontAwesomeIcons.image,
                  color: Colors.green,
                  size: 25,
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.4),
            thickness:10,
          ),
          //stories row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //create story container
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Container(
                    height: 215,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.withOpacity(0.05),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          height: 135,
                          width: 120,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/profilePic.jpg'))),
                        ),
                        Positioned(
                            bottom: 54,
                            left: 38,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: blue,
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: const Icon(
                                FontAwesomeIcons.add,
                                color: Colors.white,
                                size: 23,
                              ),
                            )),
                        const Positioned(
                          bottom: 10,
                          left: 37,
                          child: Text(
                            'Create \n story',
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Stories(
                    name: 'Alex Jordan',
                    profilePic: alexJordan,
                    story:
                        'https://images.pexels.com/photos/7693753/pexels-photo-7693753.jpeg'),
                Stories(
                    name: 'Dr Andrea',
                    profilePic: andrea,
                    story:
                        'https://images.pexels.com/photos/3787840/pexels-photo-3787840.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                Stories(
                    name: 'Eliana',
                    profilePic: eliana,
                    story:
                        'https://images.pexels.com/photos/610294/pexels-photo-610294.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Stories(
                    name: 'Elon Musk',
                    profilePic: elonMusk,
                    story:
                        'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Stories(
                    name: 'Mahreen',
                    profilePic:
                        'https://images.pexels.com/photos/3779760/pexels-photo-3779760.jpeg?auto=compress&cs=tinysrgb&w=600',
                    story:
                        'https://images.pexels.com/photos/3771055/pexels-photo-3771055.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Stories(
                    name: 'Sophia',
                    profilePic: sophia,
                    story:
                        'https://images.pexels.com/photos/3182811/pexels-photo-3182811.jpeg?auto=compress&cs=tinysrgb&w=600')
              ],
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.4),
            thickness:10,
          ),
        Post(
            name:'Dr Andrea',
            time: '1 h',
            profilPic: andrea,
            postPic:'https://images.pexels.com/photos/3182811/pexels-photo-3182811.jpeg?auto=compress&cs=tinysrgb&w=600' ),
          Divider(
            color: Colors.grey.withOpacity(0.4),
            thickness: 10,
          ),
          Post(
              name:'Sophia',
              time:'2 d',
              profilPic:sophia,
              postPic:'https://images.pexels.com/photos/10635648/pexels-photo-10635648.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
          Divider(
            color: Colors.grey.withOpacity(0.4),
            thickness: 10,
          ),
          Post(
              name:'Elon Musk',
              time:'1 w',
              profilPic:elonMusk,
              postPic:'https://images.pexels.com/photos/842567/pexels-photo-842567.jpeg?auto=compress&cs=tinysrgb&w=600'),
          Divider(
            color: Colors.grey.withOpacity(0.4),
            thickness: 10,
          ),
          Post(
              name: 'Alex Jordan',
              time: '4 d',
              profilPic:alexJordan,
              postPic:'https://images.pexels.com/photos/3184325/pexels-photo-3184325.jpeg?auto=compress&cs=tinysrgb&w=600'),
          Divider(
            color: Colors.grey.withOpacity(0.4),
            thickness: 10,
          ),
          Post(
              name: 'Eliana',
              time:'2 w',
              profilPic:eliana,
              postPic:'https://images.pexels.com/photos/1438084/pexels-photo-1438084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          Divider(
            color: Colors.grey.withOpacity(0.4),
            thickness: 10,
          ),
          Post(
              name:'Nature' ,
              time: '17 h',
              profilPic:'https://images.pexels.com/photos/4591254/pexels-photo-4591254.jpeg?auto=compress&cs=tinysrgb&w=600',
              postPic:'https://images.pexels.com/photos/4064432/pexels-photo-4064432.jpeg?auto=compress&cs=tinysrgb&w=600')
        ],
      ),
    );
  }
}
