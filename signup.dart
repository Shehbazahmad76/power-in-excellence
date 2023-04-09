import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:power_in_excellence/login.dart';
import 'package:power_in_excellence/verification.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   bool _isObscured = true;
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
                      "Signup",
                      style: TextStyle(
                        
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                  ),
                   ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(child: Image.asset("assets/splash.png")),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Let’s Get It Started!",
                      style: TextStyle(
                          
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
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
                      
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "First Name",
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
                          hintText: "Last Name",
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
                          hintText: "Email",
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
                        obscureText: _isObscured,
                      keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          
                          border: InputBorder.none,
                          suffixIcon: IconButton(onPressed: () {
                             setState(() {
                    _isObscured = !_isObscured;
                  });
                          }, icon: Icon(Icons.remove_red_eye,color: Color(0xffEB7D22),),),
                          hintText: "pasward",
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
                          obscureText: _isObscured,
                      keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          
                          border: InputBorder.none,
                          suffixIcon:IconButton(onPressed: () {
                             setState(() {
                    _isObscured = !_isObscured;
                  });
                          }, icon: Icon(Icons.remove_red_eye,color: Color(0xffEB7D22),),),
                          hintText: " Confirm pasward",
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

                                  SizedBox(height: 60,),
                  Center(
                    child: Container(
                      height: 40,
                      width: 254,
                      decoration: BoxDecoration(
                        color: Color(0xffEB7D22),
                          borderRadius: BorderRadius.circular(25)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Verification(),
                                ));
                          },
                          child: const Text(
                            "Signup ",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),
                            
                          )),
                    ),
                  ),
                 
                                const SizedBox(
                    height: 40,
                  ),
                 
                  SizedBox(
                    height: 30,
                  ),
                 
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account  ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xff000000),
                          ),
                        ),
                        VerticalDivider(
                          width: 2,
                          thickness: 1,
                          indent: 15,
                          endIndent: 15,
                          color: Color(0xff979797),
                        ),
                        SizedBox(width: 3,),
                         TextButton(onPressed: () {
                         Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen1(),
                                ));
                       }, child:  Text(
                          "Login",
                          style: TextStyle( color: Color(0xffEB7D22),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              ),
                        ))

                      ],
                    ),
                  )
                ]),
          ),

      )),
    );
  }
}