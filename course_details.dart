import 'package:flutter/material.dart';
import 'package:power_in_excellence/premiumpack.dart';

import 'lec1.dart';
import 'login.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage('assets/c.png'), // set your image here
                    fit: BoxFit.cover, // set the fit property here
                  ),
                  Positioned(
                    top: 0,
                    left: 10,
                    right: 0,
                    bottom: 10,
                    child: AppBar(
                    leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                  ),
                  Positioned(
                    top: 0, // set the top property of the Positioned widget here
                    left: 300,
                    right: 0,
                    bottom: 130,
                   child: IconButton(onPressed: 
                   () {
                        showDialog(
                            context: context,
                            builder: ((context) {
                              return SizedBox(
                                child: AlertDialog(
                                  title: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                         
                                          Column(
                                                children: [
                                                   Text("Share On", style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                        ),),
                                                
                                                ],
                                              ),
                                              
                                        ],
                                      ),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                   
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                             Image.asset("assets/facebook.png"),
                                              SizedBox(height: 4.0),
                                              Text('Facebook',style: TextStyle(fontSize: 12),),
                                              SizedBox(height: 30,),
                                               Image.asset("assets/co.png"),
                                              SizedBox(height: 4.0),
                                              Text('Contacts',style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Image.asset("assets/whatsapp.png"),
                                              SizedBox(height: 4.0),
                                              Text('whatsapp',style: TextStyle(fontSize: 12),),
                                              SizedBox(height:30 ,),
                                              Image.asset("assets/mesenger.png"),
                                              SizedBox(height: 4.0),
                                              Text('Mesenger',style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                             Image.asset("assets/twitter.png"),
                                              SizedBox(height: 4.0),
                                              Text('twitter',style: TextStyle(fontSize: 12),),
                                              SizedBox(height:30 ,),
                                              Image.asset("assets/link.png"),
                                              SizedBox(height: 4.0),
                                              Text('Copy link',style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          
                                        ],
                                      ),
                              
                                    ],
                                  ),
                              
                                  
                                 
                                ),
                              );
                            }),
                          );


                   }, icon:Icon(Icons.share)),
                  ),
                 
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text( 
                  "Course 1",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xff000000)
                ),
                ),
              ),
              SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.only(right: 40),
                 child: Text( textAlign: TextAlign.left,
                  "Lorem Ipsum is simply dummy text of the printing\n and typesetting industry.",style: TextStyle(
                  fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff000000)
              ),
              ),
               ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: () {
                   Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>Lec1(),
                                  ));
                },
                child: ListTile(
                dense: true,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('1.',style: TextStyle(
                    fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                  ),),
                ),
                title: Text('Lecture 01',style: TextStyle(
                  fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                ),),
                subtitle: Text("Video - 2:18 mins",style: TextStyle(
                  fontSize: 9,fontWeight: FontWeight.w400,color: Color(0xff000000)
                ),),
                trailing: Image.asset("assets/video.png")
              ),
              ),
        Divider(
          indent: 20,
          endIndent: 10,
          color: Colors.grey,
          thickness: 1,
        ),
        
          GestureDetector(
            onTap: () {
              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>Lec1(),
                                  ));
            },
            child: ListTile(
            dense: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('2.',style: TextStyle(
                    fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                  ),),
            ),
            title: Text('Lecture 02',style: TextStyle(
                  fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                ),),
            subtitle: Text("Video - 3:11 mins",style: TextStyle(
                  fontSize: 9,fontWeight: FontWeight.w400,color: Color(0xff000000)
                ),),
            trailing: Image.asset("assets/video.png")
          ),
          ),
        Divider(
          indent: 20,
          endIndent: 10,
          color: Colors.grey,
          thickness: 1,
        ),
        
         GestureDetector(
            onTap: () {
              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>PremiumPack(),
                                  ));
            },
            child: ListTile(
            dense: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('3.',style: TextStyle(
                    fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                  ),),
            ),
            title: Text('Lecture 03',style: TextStyle(
                  fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                ),),
            subtitle: Text("Video - 3:11 mins",style: TextStyle(
                  fontSize: 9,fontWeight: FontWeight.w400,color: Color(0xff000000)
                ),),
            trailing: Image.asset("assets/lock.png")
          ),
          ),
        Divider(
          indent: 20,
          endIndent: 10,
          color: Colors.grey,
          thickness: 1,
        ),
        
         GestureDetector(
            onTap: () {
              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>PremiumPack(),
                                  ));
            },
            child: ListTile(
            dense: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('4.',style: TextStyle(
                    fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                  ),),
            ),
            title: Text('Lecture 04',style: TextStyle(
                  fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                ),),
            subtitle: Text("Video - 3:11 mins",style: TextStyle(
                  fontSize: 9,fontWeight: FontWeight.w400,color: Color(0xff000000)
                ),),
            trailing: Image.asset("assets/lock.png")
          ),
          ),
        Divider(
          indent: 20,
          endIndent: 10,
          color: Colors.grey,
          thickness: 1,
        ),
        
         GestureDetector(
            onTap: () {
              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>PremiumPack(),
                                  ));
            },
            child: ListTile(
            dense: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('5.',style: TextStyle(
                    fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                  ),),
            ),
            title: Text('Lecture 05',style: TextStyle(
                  fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                ),),
            subtitle: Text("Video - 3:11 mins",style: TextStyle(
                  fontSize: 9,fontWeight: FontWeight.w400,color: Color(0xff000000)
                ),),
            trailing: Image.asset("assets/lock.png")
          ),
          ),
        Divider(
          indent: 20,
          endIndent: 10,
          color: Colors.grey,
          thickness: 1,
        ),
        
         GestureDetector(
            onTap: () {
              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>PremiumPack(),
                                  ));
            },
            child: ListTile(
            dense: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('6.',style: TextStyle(
                    fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                  ),),
            ),
            title: Text('Lecture 06',style: TextStyle(
                  fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                ),),
            subtitle: Text("Video - 3:11 mins",style: TextStyle(
                  fontSize: 9,fontWeight: FontWeight.w400,color: Color(0xff000000)
                ),),
            trailing: Image.asset("assets/lock.png")
          ),
          ),
        Divider(
          indent: 20,
          endIndent: 10,
          color: Colors.grey,
          thickness: 1,
        ),
        
         GestureDetector(
            onTap: () {
              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>PremiumPack(),
                                  ));
            },
            child: ListTile(
            dense: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('7.',style: TextStyle(
                    fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                  ),),
            ),
            title: Text('Lecture 07',style: TextStyle(
                  fontSize: 13,fontWeight: FontWeight.w500,color: Color(0xff000000)
                ),),
            subtitle: Text("Video - 3:11 mins",style: TextStyle(
                  fontSize: 9,fontWeight: FontWeight.w400,color: Color(0xff000000)
                ),),
            trailing: Image.asset("assets/lock.png")
          ),
          ),
        Divider(
          indent: 20,
          endIndent: 10,
          color: Colors.grey,
          thickness: 1,
        ),
        
            ],
          ),
        ),
        
      );
  }
}