import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
   return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
          centerTitle: true,
          title: Text(
            "About",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Center(child: Image.asset("assets/splash.png")),
                SizedBox(height: 40,),
                 Center(
                   child: Text(
                      "Help protect your website and its users with clear \n and fair website terms and conditions",

                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                 ),
                  SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Powered by",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Power in Excellence",
                    style: TextStyle(
                        color: Color(0xff7B7B7B),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset('assets/webpic.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "www.parkright.app",
                      style: TextStyle(color: Color(0xff000000), fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset('assets/mail.png'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Info@parkright.app",
                      style: TextStyle(color: Color(0xff000000), fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                 Center(
                   child: Text(
                        "Version 6.13.1",
                        style: TextStyle(color: Color(0xff000000), fontSize: 13,fontWeight: FontWeight.w500),
                      ),
                 ),
                 SizedBox(height: 10,),
                 Center(
                   child: Text(
                        "Logged in as example123@gmail.com",
                        style: TextStyle(color: Color(0xff000000), fontSize: 13,fontWeight: FontWeight.w500),
                      ),
                 ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}