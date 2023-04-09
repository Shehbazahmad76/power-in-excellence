
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_in_excellence/contact%20us.dart';
import 'package:power_in_excellence/login.dart';
import 'package:power_in_excellence/show_notification.dart';
import 'contact.dart';
import 'course_details.dart';
import 'download.dart';
import 'premiumpack.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> images = [
    'assets/grid.png',
    'assets/grid1.png',
  ];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        titleSpacing: 2,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Image.asset("assets/menu.png"),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: Text(
          "Power in Excellence",
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
                height: 160,
                width: 310,
                decoration: BoxDecoration(
                    // color: AppColors.BlueColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                   color: Color(0xffEB7D22),
                    ),
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
              ListTile(
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CourseDetails()),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/grid.png"),
                        Positioned(
                          child: Text(
                            "Course Name",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,
                                  fontSize: 13),
                            ),
                          ),
                          bottom: 5,
                          left: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CourseDetails()),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/grid.png"),
                        Positioned(
                          child: Text(
                            "Course Name",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,
                                  fontSize: 13),
                            ),
                          ),
                          bottom: 5,
                          left: 10,
                        ),
                       
                      ],
                    ),
                  ),
                ],
              ),
          SizedBox(height: 10,),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CourseDetails()),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/grid.png"),
                        Positioned(
                          child: Text(
                            "Course Name",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,
                                  fontSize: 13),
                            ),
                          ),
                          bottom: 5,
                          left: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CourseDetails()),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/grid1.png"),
                        Positioned(
                          child: Text(
                            "Course Name",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,
                                  fontSize: 13),
                            ),
                          ),
                          bottom: 5,
                          left: 10,
                        ),
                        Positioned(
                            bottom: 5,
                            right: 10,
                            child: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
SizedBox(height: 10,),
  Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CourseDetails()),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/grid2.png"),
                        Positioned(
                          child: Text(
                            "Course Name",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,
                                  fontSize: 13),
                            ),
                          ),
                          bottom: 5,
                          left: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>CourseDetails()),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/grid2.png"),
                        Positioned(
                          child: Text(
                            "Course Name",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,
                                  fontSize: 13),
                            ),
                          ),
                          bottom: 5,
                          left: 10,
                        ),
                        Positioned(
                            bottom: 5,
                            right: 10,
                            child: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                ],
              ),

         SizedBox(height: 10,),
                  Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CourseDetails()),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/grid1.png"),
                        Positioned(
                          child: Text(
                            "Course Name",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,
                                  fontSize: 13),
                            ),
                          ),
                          bottom: 5,
                          left: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CourseDetails()),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/grid.png"),
                        Positioned(
                          child: Text(
                            "Course Name",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.none,
                                  fontSize: 13),
                            ),
                          ),
                          bottom: 5,
                          left: 10,
                        ),
                        Positioned(
                            bottom: 5,
                            right: 10,
                            child: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
        

            ],
          ),
        ),
      ),
    );
  }
}