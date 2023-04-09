import 'package:flutter/material.dart';
import 'package:power_in_excellence/edit_profile.dart';

import 'profile.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
          centerTitle: true,
          title: Text(
            "Contacts Us",
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                       
                      ),
                      height: 440,
                      width: 346,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Contact Us",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
    border: Border.all(
      color: Color(0xff7D7D7D),
      width: 1,
    ),
  ),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  hintText: "Your Name",
                                  contentPadding: EdgeInsets.only(
                                      left: 10.0, right: 16.0, bottom: 6.0),
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
    border: Border.all(
      color: Color(0xff7D7D7D),
      width: 1,
    ),
  ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "Your Contact Number",
                                  contentPadding: EdgeInsets.only(
                                      left: 10.0, right: 16.0, bottom: 6.0),
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 300,
                           decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
    border: Border.all(
      color: Color(0xff7D7D7D),
      width: 1,
    ),
  ),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  hintText: " Your Email",
                                  contentPadding: EdgeInsets.only(
                                      left: 10.0, right: 16.0, bottom: 6.0),
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 100,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
    border: Border.all(
      color: Color(0xff7D7D7D),
      width: 1,
    ),
  ),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  hintText:
                                      "Your feedback is important to us.",
                                  contentPadding: EdgeInsets.only(
                                      left: 10.0, right: 16.0, bottom: 6.0),
                                  border: InputBorder.none),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: 210,
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
                                    builder: (context) => EditProfile(),
                                  ),
                                );
                              },
                              child: Text("Send",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 185),
                  child: Text(
                    "We Are Available On",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                  height: 10,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
