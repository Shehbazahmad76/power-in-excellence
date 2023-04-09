import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:power_in_excellence/payment_method.dart';

class Coupan extends StatefulWidget {
  const Coupan({super.key});

  @override
  State<Coupan> createState() => _CoupanState();
}

class _CoupanState extends State<Coupan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
  
      appBar: AppBar(
        centerTitle: true,
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Become a corporate user ",style: TextStyle(
            color: Colors.black,fontSize: 22,fontWeight: FontWeight.w700
          ),
          // style: appbarStyle,
        ),
      ),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            SizedBox(height: 50,),
            Center(
              child: Container(
                height: 56,
                width: 333,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                   border: Border.all(
      color: Color(0xff7D7D7D),
      width: 1,
    ),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                          
                          border: InputBorder.none,
                         
                          hintText: " Enter Coupon Code",
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
          SizedBox(height: 100,),
            Center(
                child: Container(
                  width: 264,
                  height: 45,
                  decoration: BoxDecoration(
                     color: Color(0xffEB7D22),
                      borderRadius: BorderRadius.circular(25),
                      
                      ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>PaymentMethod(uid: '',),
                        ),
                      );
                    },
                    child: Text("Apply",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),

            
          ],
        
          ),
        ),
      ),
    ),    );

  }
}