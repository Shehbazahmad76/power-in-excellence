

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_in_excellence/contact.dart';
import 'package:power_in_excellence/download.dart';
import 'package:power_in_excellence/login.dart';
import 'package:power_in_excellence/play.dart';
import 'package:power_in_excellence/premiumpack.dart';
import 'package:power_in_excellence/show_notification.dart';

import 'bottom.dart';
import 'home.dart';

class Podcast extends StatefulWidget {
  const Podcast({super.key});

  @override
  State<Podcast> createState() => _PodcastState();
}

class _PodcastState extends State<Podcast> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,
       appBar: AppBar(
        titleSpacing: 2,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Image.asset("assets/menu.png"),
          onPressed: () {
            {
            _scaffoldKey.currentState?.openDrawer();
          };
          },
        ),
        title: Text(
          "Podcast",
          style:TextStyle(color: Color(0xffEB7D22)),
        ),
        actions: [
         Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),),);
              }, icon:Icon(Icons.notifications_on,color: Colors.black,)),
            ),
        ],
        elevation: 0,
      ),
    
     drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 200,
                width: 310,
                decoration: BoxDecoration(
                    // color: AppColors.BlueColor,
                   
                   color: Color(0xffEB7D22),
                    ),
                    margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ListTile(
                    leading: CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: AssetImage("assets/1.jpg"),
                    ),
                    title: Text(
                      "Name",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none,
                            fontSize: 15),
                      ),
                    ),
                    subtitle: Text(
                      "abc**@gmail.com",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                            fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                 onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => bottomnavbar()),
                  );
                },
                leading: Icon(
                  Icons.home,
                 color: Color(0xffEB7D22),
                ),
                title: Text(
                  "Home",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Color(0xff3B3A43),
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none,
                        fontSize: 15),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Download()),
                  );
                },
                leading: Icon(
                  Icons.download,
                  color: Color(0xffEB7D22),
                ),
                title: Text(
                  "My Download",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Color(0xff3B3A43),
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none,
                        fontSize: 15),
                  ),
                ),
              ),
              ListTile(
                 onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Help()),
                  );
                },
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             usersetting(userid: widget.userid)),
                //   );
                // },
                leading: Icon(
                  Icons.contact_support_sharp,
                   color: Color(0xffEB7D22),
                ),
                title: Text(
                  "Contacts Us",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Color(0xff3B3A43),
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none,
                        fontSize: 15),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                 onTap: () {
                    showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.clear),
                                  ),
                                ],
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                 Image.asset("assets/di.png"),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Logout",
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    textAlign: TextAlign.center,
                                    "Are you sure you want to Logout?",
                                    style: TextStyle(color: Color(0xff000000)),
                                  ),
                                ],
                              ),
                              actions: [
                                Align(
                                  alignment: Alignment.center,
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints.tightFor(
                                      height: 45,
                                      width: 160,
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                             backgroundColor: Color(0xffEB7D22)),
                                        onPressed: () {
                                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen1(),
                                ));
                                        },
                                        child: Text(
                                          "Logout now",
                                          style: TextStyle(),
                                        )),
                                  ),
                                )
                              ],
                            );
                          }),
                        );

                 },
                leading: Image(
                    width: 20,
                    height: 20,
                    image: AssetImage("assets/logout.png")),
                title: Text(
                  "Logout",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Color(0xff3B3A43),
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.none,
                        fontSize: 15),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

      body: SafeArea(child: 
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),

              GestureDetector(
                onTap: () {
                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
                },
                child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
              leading: Container(
                height: 40,
                width: 40,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20)
              ),
                child: Image.asset("assets/music.png"),
              ),
              title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
              subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {
                     
                   }, icon: Icon(Icons.download,color: Color(0xffEB7D22),size: 20,)),
                   IconButton(onPressed: () {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
                   }, icon: Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,))
                ],
              ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
                  GestureDetector(
                onTap: () {
                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
                },
                child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
              leading: Container(
                height: 40,
                width: 40,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20)
              ),
                child: Image.asset("assets/music.png"),
              ),
              title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
              subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
                   }, icon: Icon(Icons.download,color: Color(0xffEB7D22),size: 20,)),
                   IconButton(onPressed: () {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
                   }, icon: Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,))
                ],
              ),
                    ),
                  ),
                ),
              ),
SizedBox(height: 10,),
    GestureDetector(
                onTap: () {
                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
                },
                child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
              leading: Container(
                height: 40,
                width: 40,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20)
              ),
                child: Image.asset("assets/music.png"),
              ),
              title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
              subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: () {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
                   }, icon: Icon(Icons.download,color: Color(0xffEB7D22),size: 20,)),
                   IconButton(onPressed: () {
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
                   }, icon: Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,))
                ],
              ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
  GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
       }, icon: Icon(Icons.lock,color: Color(0xffEB7D22),size: 20,)),
                    ),
                  ),
                ),
 ),

SizedBox(height: 10,),
 GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
       }, icon: Icon(Icons.lock,color: Color(0xffEB7D22),size: 20,)),
                    ),
                  ),
                ),
 ),

SizedBox(height: 10,),
 GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
       }, icon: Icon(Icons.lock,color: Color(0xffEB7D22),size: 20,)),
                    ),
                  ),
                ),
 ),

SizedBox(height: 10,),
  GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
       }, icon: Icon(Icons.lock,color: Color(0xffEB7D22),size: 20,)),
                    ),
                  ),
                ),
 ),

SizedBox(height: 10,),
  GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
       }, icon: Icon(Icons.lock,color: Color(0xffEB7D22),size: 20,)),
                    ),
                  ),
                ),
 ),

SizedBox(height: 10,),
 GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
       }, icon: Icon(Icons.lock,color: Color(0xffEB7D22),size: 20,)),
                    ),
                  ),
                ),
 ),

SizedBox(height: 10,),
 GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>PremiumPack(),
                                    ));
       }, icon: Icon(Icons.lock,color: Color(0xffEB7D22),size: 20,)),
                    ),
                  ),
                ),
 ),

            ],
          ),
        ),
      )),
    );
  }
}