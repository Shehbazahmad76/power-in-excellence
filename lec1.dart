import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Lec1 extends StatefulWidget {
  const Lec1({super.key});

  @override
  State<Lec1> createState() => _Lec1State();
}

class _Lec1State extends State<Lec1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Lecture 01",
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
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
               
               SizedBox(height: 100,),
               Center(
  child: Stack(
    children: <Widget>[
      Image.asset("assets/play.png"),
      Positioned.fill(
        child: Align(
          alignment: Alignment.center,
          child: Icon(Icons.play_circle_filled ,color: Color(0xffEB7D22), size: 50.0),
        ),
      ),
    ],
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