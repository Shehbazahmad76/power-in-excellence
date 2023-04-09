import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'home.dart';
import 'login.dart';

class CreateProfile extends StatefulWidget {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
   CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
    icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
      ),
      
      body: SafeArea(child: SingleChildScrollView(
        child:    Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Text(
                      "Let’s complete profile",
                      style: TextStyle(
                        
                          fontSize: 26,
                          fontWeight: FontWeight.w700),
                  ),
                   ),
                  const SizedBox(
                    height: 10,
                  ),
                     Center(
                    child: Stack(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/1.jpg") ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: .5,
                                  color: Colors.white,
                                ),
                                color: Color(0xffEB7D22)),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                 
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: Container(
  decoration: BoxDecoration(
    color: Colors.white,
   
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
       color: Colors.grey,
       blurRadius: 6
       
        // changes position of shadow
      ),
    ],
  ),
                      width: 280,
                      height: 45,
                      child: TextFormField(
                        keyboardType:TextInputType.number,
                      
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone (Optional)",
                          contentPadding: EdgeInsets.only(
                              left: 16.0, right: 16.0, bottom: 8.0),
                          
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xffAAAAAA,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
  Center(
                    child: Container(
  decoration: BoxDecoration(
    color: Colors.white,
   
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
       color: Colors.grey,
       blurRadius: 6
       
        // changes position of shadow
      ),
    ],
  ),
                      width: 280,
                      height: 45,
                      child: TextFormField(
                      
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Gender",
                          contentPadding: EdgeInsets.only(
                              left: 16.0, right: 16.0, bottom: 8.0),
                          
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xffAAAAAA,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

SizedBox(height: 20,),
  Center(
                    child: Container(
  decoration: BoxDecoration(
    color: Colors.white,
   
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
       color: Colors.grey,
       blurRadius: 6
       
        // changes position of shadow
      ),
    ],
  ),
                      width: 280,
                      height: 45,
                      child: TextFormField(
                      
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Date of birth",
                          contentPadding: EdgeInsets.only(
                              left: 16.0, right: 16.0, bottom: 8.0),
                          
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xffAAAAAA,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
SizedBox(height: 20,),
                  Center(
                    child: Container(
  decoration: BoxDecoration(
    color: Colors.white,
   
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
       color: Colors.grey,
       blurRadius: 6
       
        // changes position of shadow
      ),
    ],
  ),
                      width: 280,
                      height: 45,
                      child: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.my_location_outlined,color: Color(0xffEB7D22),),
                          hintText: "Address",
                          contentPadding: EdgeInsets.only(
                            top: 10,
                              left: 16.0, right: 16.0, bottom: 4.0),
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xffAAAAAA,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                 SizedBox(height: 20,),
                   Center(
                    child: Container(
  decoration: BoxDecoration(
    color: Colors.white,
   
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
       color: Colors.grey,
       blurRadius: 6
       
        // changes position of shadow
      ),
    ],
  ),
                      width: 280,
                      height: 45,
                      child: TextFormField(
                      keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          
                          border: InputBorder.none,
                          
                          hintText: "About",
                          contentPadding: EdgeInsets.only(
                            top: 10,
                              left: 16.0, right: 16.0, bottom: 4.0),
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xffAAAAAA,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                                 
                         
                  SizedBox(
                    height: 50,
                  ),
                 
                              
                    Center(
                        child: Container(
                          width: 260,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0xffEB7D22),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(color: Colors.white),
                              ]),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => homescreen(),
                                ),
                              );
                            },
                            child: Text("Done",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),

                ]),
          ),

      )),
    );

  }
}