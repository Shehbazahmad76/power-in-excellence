import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:power_in_excellence/verification.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
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
                     padding: const EdgeInsets.only(left: 20),
                     child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                  ),
                   ),
                  const SizedBox(
                    height: 10,
                  ),
                 Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: Text(
                      "Enter your email to recover your password ",
                      style: TextStyle(
                        
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                  ),
                   ),
                   SizedBox(height: 30,),
                                SizedBox(
                    height: 35,
                  ),
                                              SizedBox(height: 40,),
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
                      width: 300,
                      height: 45,
                      child: TextFormField(
                      keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          
                          border: InputBorder.none,
                         
                          hintText: " Email",
                          contentPadding: EdgeInsets.only(
                            top: 10,
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

                                  SizedBox(height: 90,),
                  Center(
                    child: Container(
                      height: 43,
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
                          child: const Text(
                            "Send ",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),
                            
                          )),
                    ),
                  ),
                 
                                const SizedBox(
                    height: 40,
                  ),
                 
                  
                                ]),
          ),

      )),
    );

  }
}