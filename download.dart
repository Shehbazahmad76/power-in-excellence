import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:power_in_excellence/play.dart';

class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
          centerTitle: true,
          title: Text(
            "My Download",
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700),
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
        body: SafeArea(child: 
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),

      
 GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
       }, icon:Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,)),
                    ),
                  ),
                ),
 ),
SizedBox(height: 10,),


GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
       }, icon:Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,)),
                    ),
                  ),
                ),
 ),
SizedBox(height: 10,),
GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
       }, icon:Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,)),
                    ),
                  ),
                ),
 ),
SizedBox(height: 10,),
GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
       }, icon:Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,)),
                    ),
                  ),
                ),
 ),
SizedBox(height: 10,),
GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
       }, icon:Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,)),
                    ),
                  ),
                ),
 ),
SizedBox(height: 10,),
GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
       }, icon:Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,)),
                    ),
                  ),
                ),
 ),
SizedBox(height: 10,),
GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
       }, icon:Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,)),
                    ),
                  ),
                ),
 ),
SizedBox(height: 10,),
GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
       }, icon:Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,)),
                    ),
                  ),
                ),
 ),
SizedBox(height: 10,),
GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
       }, icon:Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,)),
                    ),
                  ),
                ),
 ),
SizedBox(height: 10,),
GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
       }, icon:Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,)),
                    ),
                  ),
                ),
 ),
SizedBox(height: 10,),
GestureDetector(
  onTap: () {
     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
  },
   child: Center(
                  child: Container(
                    height: 58,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xffEB7D22).withOpacity(.13)
                    ),
                    child: ListTile(
 leading: Container(
    height: 40,
    width: 40,
 decoration: BoxDecoration(
      color: Color(0xffFFFFFF),
      borderRadius: BorderRadius.circular(20)
 ),
    child: Image.asset("assets/music.png"),
 ),
 title: Text("Lecture",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
 subtitle: Text("Audio - 3:11 mins",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w400),),
 trailing:  IconButton(onPressed: () {
          Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>Play(),
                                    ));
       }, icon:Icon(Icons.play_circle_filled,color: Color(0xffEB7D22),size: 25,)),
                    ),
                  ),
                ),
 ),
SizedBox(height: 10,),

            ],
          ),
        ),
      )),

    );
    

  }
}