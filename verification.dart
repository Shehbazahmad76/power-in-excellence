import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:power_in_excellence/bottom.dart';
import 'package:power_in_excellence/profile.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: StreamBuilder<Object>(
              stream: null,
              builder: (context, snapshot) {
                var verification = Verification();
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 60),
                        child: Text("Verification",
                            style: TextStyle(
                              fontSize:26,
                              fontWeight: FontWeight.w700
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                            "Enter the OTP code sent to your email ",
                            style: TextStyle(fontSize: 12,
                              fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                        height: 180,
                        child: Pinput(
                          defaultPinTheme: PinTheme(
                            height: 50,
                            width: 50,
                            textStyle: TextStyle(color: Color(0xffEB7D22)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
      BoxShadow(
       color: Colors.grey,
       blurRadius: 6
       
        // changes position of shadow
      ),
    ],
                            ),
                          ),
                          length: 4,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ),),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 100,
                        ),
                        child: Text(
                          "Did not receive a code?",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000000)),
                        ),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                       Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Verification(),
                              ),
                            );
                          },
                          child: Text("RESEND",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,
                                color: Color(0xffEB7D22,))),
                        ),
                      ),

                      SizedBox(
                        height: 90,
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
                                  builder: (context) => bottomnavbar(),
                                ),
                              );
                            },
                            child: Text("Done",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}