import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_in_excellence/post.dart';

import 'bottom.dart';
import 'contact.dart';
import 'download.dart';
import 'login.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
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
          "Pages",
          style:TextStyle(fontSize: 22,
          fontWeight: FontWeight.w700,
            color: Color(0xffEB7D22)),
        ),
       
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
        "You are a member of these pages",
        style:TextStyle(fontSize: 18,
        fontWeight: FontWeight.w700,
         ),
        ),
            ),

GestureDetector(
   onTap: () {
                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Du(),
                                    ));
                },
  child:   ListTile(
  
    leading: CircleAvatar(
  
      backgroundImage: AssetImage("assets/1.jpg"),
  
      radius: 30,
  
    ),
  
    title: Text(
  
          "Page Name",
  
          style:TextStyle(fontSize: 14,
  
          fontWeight: FontWeight.w400,
  
           color: Color(0xff000000),
  
           ),
  
          ), 
  
          subtitle: Row(
  
            children: [
  
              Text(
  
          "Page Category ",
  
          style:TextStyle(fontSize: 10,
  
          fontWeight: FontWeight.w400, color: Color(0xff000000),
  
           ),
  
          ),
  
        Icon(Icons.circle,size: 4,
  
         color: Color(0xff000000),) ,
  
        SizedBox(width: 5,),
  
         Text(
  
          "Free ",
  
          style:TextStyle(fontSize: 10,
  
          color: Color(0xff000000),
  
          fontWeight: FontWeight.w400,
  
           ),
  
          ),
  
            ],
  
          )
  
  ),
),
Divider(
  indent: 10,
  endIndent: 10,
  thickness: 1,

),
SizedBox(height: 5,),

GestureDetector(
   onTap: () {
                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Du(),
                                    ));
                },
  child:   ListTile(
  
    leading: CircleAvatar(
  
      backgroundImage: AssetImage("assets/1.jpg"),
  
      radius: 30,
  
    ),
  
    title: Text(
  
          "Page Name",
  
          style:TextStyle(fontSize: 14,
  
          fontWeight: FontWeight.w400,
  
           color: Color(0xff000000),
  
           ),
  
          ), 
  
          subtitle: Row(
  
            children: [
  
              Text(
  
          "Page Category ",
  
          style:TextStyle(fontSize: 10,
  
          fontWeight: FontWeight.w400, color: Color(0xff000000),
  
           ),
  
          ),
  
        Icon(Icons.circle,size: 4,
  
         color: Color(0xff000000),) ,
  
        SizedBox(width: 5,),
  
         Text(
  
          "Free ",
  
          style:TextStyle(fontSize: 10,
  
          color: Color(0xff000000),
  
          fontWeight: FontWeight.w400,
  
           ),
  
          ),
  
            ],
  
          )
  
  ),
),
Divider(
  indent: 10,
  endIndent: 10,
  thickness: 1,

),
SizedBox(height: 5,),

GestureDetector(
   onTap: () {
                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Du(),
                                    ));
                },
  child:   ListTile(
  
    leading: CircleAvatar(
  
      backgroundImage: AssetImage("assets/1.jpg"),
  
      radius: 30,
  
    ),
  
    title: Text(
  
          "Page Name",
  
          style:TextStyle(fontSize: 14,
  
          fontWeight: FontWeight.w400,
  
           color: Color(0xff000000),
  
           ),
  
          ), 
  
          subtitle: Row(
  
            children: [
  
              Text(
  
          "Page Category ",
  
          style:TextStyle(fontSize: 10,
  
          fontWeight: FontWeight.w400, color: Color(0xff000000),
  
           ),
  
          ),
  
        Icon(Icons.circle,size: 4,
  
         color: Color(0xff000000),) ,
  
        SizedBox(width: 5,),
  
         Text(
  
          "Free ",
  
          style:TextStyle(fontSize: 10,
  
          color: Color(0xff000000),
  
          fontWeight: FontWeight.w400,
  
           ),
  
          ),
  
            ],
  
          )
  
  ),
),
Divider(
  indent: 10,
  endIndent: 10,
  thickness: 1,

),
SizedBox(height: 5,),

GestureDetector(
   onTap: () {
                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Du(),
                                    ));
                },
  child:   ListTile(
  
    leading: CircleAvatar(
  
      backgroundImage: AssetImage("assets/1.jpg"),
  
      radius: 30,
  
    ),
  
    title: Text(
  
          "Page Name",
  
          style:TextStyle(fontSize: 14,
  
          fontWeight: FontWeight.w400,
  
           color: Color(0xff000000),
  
           ),
  
          ), 
  
          subtitle: Row(
  
            children: [
  
              Text(
  
          "Page Category ",
  
          style:TextStyle(fontSize: 10,
  
          fontWeight: FontWeight.w400, color: Color(0xff000000),
  
           ),
  
          ),
  
        Icon(Icons.circle,size: 4,
  
         color: Color(0xff000000),) ,
  
        SizedBox(width: 5,),
  
         Text(
  
          "Free ",
  
          style:TextStyle(fontSize: 10,
  
          color: Color(0xff000000),
  
          fontWeight: FontWeight.w400,
  
           ),
  
          ),
  
            ],
  
          )
  
  ),
),
Divider(
  indent: 10,
  endIndent: 10,
  thickness: 1,

),
SizedBox(height: 5,),

GestureDetector(
   onTap: () {
                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Du(),
                                    ));
                },
  child:   ListTile(
  
    leading: CircleAvatar(
  
      backgroundImage: AssetImage("assets/1.jpg"),
  
      radius: 30,
  
    ),
  
    title: Text(
  
          "Page Name",
  
          style:TextStyle(fontSize: 14,
  
          fontWeight: FontWeight.w400,
  
           color: Color(0xff000000),
  
           ),
  
          ), 
  
          subtitle: Row(
  
            children: [
  
              Text(
  
          "Page Category ",
  
          style:TextStyle(fontSize: 10,
  
          fontWeight: FontWeight.w400, color: Color(0xff000000),
  
           ),
  
          ),
  
        Icon(Icons.circle,size: 4,
  
         color: Color(0xff000000),) ,
  
        SizedBox(width: 5,),
  
         Text(
  
          "Free ",
  
          style:TextStyle(fontSize: 10,
  
          color: Color(0xff000000),
  
          fontWeight: FontWeight.w400,
  
           ),
  
          ),
  
            ],
  
          )
  
  ),
),
Divider(
  indent: 10,
  endIndent: 10,
  thickness: 1,

),
SizedBox(height: 5,),





          ],

        ),
      )),
    );
  }
}