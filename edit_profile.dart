import 'package:flutter/material.dart';
import 'package:power_in_excellence/profile.dart';

import 'profile_setting.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          "Edit Profile",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 17,right: 20),
            child: Text("Edit",style: TextStyle(fontSize: 15,
              color: Color(0xffEB7D22)
            ),),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 20),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:AssetImage("assets/1.jpg")),
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
                              width: 1,
                              color: Colors.white,
                            ),
                            color: Color(0xffEB7D22)),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 15,
                width: 300,
                child: Text(
                  "First Name",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                     color: Color(0xff5F5E5E),
                      ),
                ),
              ),
              Container(
                height: 50,
                width: 300,
                 color: Color(0xff000000
).withOpacity(.10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: "shehbaz",
                      contentPadding:
                          EdgeInsets.only(left: 10.0, right: 16.0, bottom: 6.0),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 15,
                width: 300,
                child: Text(
                  "LAst Name",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                     color: Color(0xff5F5E5E),
                      ),
                ),
              ),
              Container(
                height: 50,
                width: 300,
                color: Color(0xff000000).withOpacity(.10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: "Ahmad",
                      contentPadding:
                          EdgeInsets.only(left: 10.0, right: 16.0, bottom: 6.0),
                      border: InputBorder.none),
                ),
              ),
             
              SizedBox(
                height: 15,
              ),
              Container(
                height: 15,
                width: 300,
                child: Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5F5E5E),
                      ),
                ),
              ),
              Container(
                height: 50,
                width: 300,
               color: Color(0xff000000).withOpacity(.10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Example123@gmail.com",
                      contentPadding:
                          EdgeInsets.only(left: 10.0, right: 16.0, bottom: 6.0),
                      border: InputBorder.none),
                ),
              ),

               SizedBox(
                height: 15,
              ),
              Container(
                height: 15,
                width: 300,
                child: Text(
                  "Gender",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8A8A8A),
                      ),
                ),
              ),
              Container(
                height: 50,
                width: 300,
                color: Color(0xff000000).withOpacity(.10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Male",
                      contentPadding:
                          EdgeInsets.only(left: 10.0, right: 16.0, bottom: 6.0),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 15,
              ),
               Container(
                height: 15,
                width: 300,
                child: Text(
                  "Date of birth",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8A8A8A),
                      ),
                ),
              ),
              Container(
                height: 50,
                width: 300,
                color: Color(0xff000000).withOpacity(.10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Jan 16, 2002",
                      contentPadding:
                          EdgeInsets.only(left: 10.0, right: 16.0, bottom: 6.0),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 15,
              ),
               Container(
                height: 15,
                width: 300,
                child: Text(
                  "Address",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8A8A8A),
                      ),
                ),
              ),
              Container(
                height: 50,
                width: 300,
                color: Color(0xff000000).withOpacity(.10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Street number 02, city, Layyah",
                      contentPadding:
                          EdgeInsets.only(left: 10.0, right: 16.0, bottom: 6.0),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 15,
              ),
               Container(
                height: 15,
                width: 300,
                child: Text(
                  "About",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8A8A8A),
                      ),
                ),
              ),
              Container(
                height: 50,
                width: 300,
                color: Color(0xff000000).withOpacity(.10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Hey, I am Shehbaz Ahmad, about text will show here",
                      contentPadding:
                          EdgeInsets.only(left: 10.0, right: 16.0, bottom: 6.0),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: Container(
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
                          builder: (context) => ProfileSetting(),
                        ),
                      );
                    },
                    child: Text("Update",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
