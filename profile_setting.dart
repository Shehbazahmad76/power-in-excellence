
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_in_excellence/home.dart';

import 'bottom.dart';
import 'contact.dart';
import 'download.dart';
import 'edit_profile.dart';
import 'login.dart';
import 'logout.dart';
import 'setting.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
         appBar: AppBar(
        titleSpacing: 2,
        backgroundColor: Colors.transparent,
        leading:  Container(
          height: 260,
          width: 250,
   decoration: BoxDecoration(
   
    borderRadius: BorderRadius.circular(25)
   ),
    child: IconButton(
      icon: Icon(Icons.menu,color: Colors.black,),
      onPressed: () {
        
            _scaffoldKey.currentState?.openDrawer();
          
      },
    ),
  ),
        title: Text(
          "Profile",
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

        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
             
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 150,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/1.jpg")
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Shehbaz Ahmad',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Shehbaz@gmail.com',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff000000).withOpacity(.10),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    "Preferences",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfile(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                           color: Color(0xff000000).withOpacity(.10),
                        ),
                      ],
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfile(),
                            ),
                          );
                        },
                        icon: Icon(Icons.person)),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_forward_ios)),
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Setting(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000).withOpacity(.10),
                        ),
                      ],
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Setting(),
                            ),
                          );
                        },
                        icon: Icon(Icons.settings)),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Setting(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_forward_ios)),
                ),
              ),
                          // help screen
                           SizedBox(height: 10,),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: ((context) {
                      return AlertDialog(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    Navigator.of(context).pop();
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
                child: ListTile(
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                           color: Color(0xff000000).withOpacity(.10),
                        ),
                      ],
                    ),
                    child: IconButton(
                        onPressed: () {
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
                                      style:
                                          TextStyle(color: Color(0xff000000)),
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
                                                      BorderRadius.circular(
                                                          25)),
                                               backgroundColor: Color(0xffEB7D22)),
                                          onPressed: () {
                                            Navigator.of(context).pop();
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
                        icon: Icon(Icons.logout_outlined)),
                  ),
                  trailing: IconButton(
                      onPressed: () {
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
                      icon: Icon(Icons.arrow_forward_ios)),
                ),
              ),
 SizedBox(height: 10,),
            ],
          ),
        )),
      ),
    );

  }
}