import 'package:flutter/material.dart';
import 'package:power_in_excellence/bottom.dart';
import 'package:power_in_excellence/forgot.dart';
import 'package:power_in_excellence/signup.dart';
import 'package:power_in_excellence/splashscreen.dart';
import 'package:power_in_excellence/verification.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});
  
  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
   bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(
                      
                        fontSize: 32,
                        fontWeight: FontWeight.w700),
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
                      "Welcome Back!",
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
                  SizedBox(
                    height: 40,
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
                
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: TextButton(onPressed: () {
                         Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Forgot(),
                                ));
                       }, child:  Text(
                          "Forgot Password?",
                          style: TextStyle( color: Color(0xffEB7D22),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              ),
                        ))

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
                                  builder: (context) =>Verification(),
                                ));
                          },
                          child:  Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Login ",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),
                              
                            ),
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
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account  ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xff000000),
                          ),
                        ),
                        VerticalDivider(
                          width: 3,
                          thickness: 1,
                          indent: 42,
                          endIndent: 42,
                          color: Color(0xff979797),
                        ),
                       TextButton(onPressed: () {
                         Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signup(),
                                ));
                       }, child:  Text(
                          "Signup",
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
      ),
    );
  }
}
