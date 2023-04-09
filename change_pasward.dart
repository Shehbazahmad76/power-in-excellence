import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:power_in_excellence/profile.dart';

class ChangePasward extends StatefulWidget {
  const ChangePasward({super.key});

  @override
  State<ChangePasward> createState() => _ChangePaswardState();
}

class _ChangePaswardState extends State<ChangePasward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
    icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Change Pasward",style: TextStyle(
          color: Colors.black,
          fontSize: 20,fontWeight: FontWeight.w700,
        ),),
      ),
      body: SafeArea(child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(child: Image.asset("assets/splash.png")),
            SizedBox(height: 40,),
              Container(
                height: 50,
                width: 300,
               decoration: BoxDecoration(
       color: Color(0xff000000).withOpacity(.10),
      borderRadius: BorderRadius.circular(2)
    ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Old Password",
                      contentPadding:
                          EdgeInsets.only(left: 10.0, right: 16.0, bottom: 6.0),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 20,),
                Container(
                height: 50,
                width: 300,
               decoration: BoxDecoration(
       color: Color(0xff000000).withOpacity(.10),
      borderRadius: BorderRadius.circular(2)
    ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "New Password",
                      contentPadding:
                          EdgeInsets.only(left: 10.0, right: 16.0, bottom: 6.0),
                      border: InputBorder.none),
                ),
              ),

 SizedBox(height: 20,),
   Container(
    decoration: BoxDecoration(
       color: Color(0xff000000).withOpacity(.10),
      borderRadius: BorderRadius.circular(2)
    ),
                height: 50,
                width: 300,
              
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(
                        color: Color(0xff6C6C6C)
                      ),
                      contentPadding:
                          EdgeInsets.only(left: 10.0, right: 16.0, bottom: 6.0),
                      border: InputBorder.none),
                ),
              ),

SizedBox(height: 50,),
 Center(
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                     color: Color(0xffEB7D22),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(color: Colors.white),
                      ]),
                  child: TextButton(
                    onPressed: () {
                     
                    },
                    child: Text("Change Password",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),

          ],
        ),
      ),
      )
      ),
    );
  }
}