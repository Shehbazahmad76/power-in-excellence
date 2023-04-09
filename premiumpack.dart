import 'package:flutter/material.dart';
import 'payment_method.dart';

class PremiumPack extends StatefulWidget {
  const PremiumPack({super.key});

  @override
  State<PremiumPack> createState() => _PremiumPackState();
}

class _PremiumPackState extends State<PremiumPack> {
   int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
          centerTitle: true,
          
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Icon(
                  Icons.clear_rounded,
                  color: Colors.black,
                ),
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 13),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text(
              "Unlock “Power in Excellence” Premium",
              style: TextStyle(
                  color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 30,),
          Container(
            height: 51,
            width: 320,
            decoration: BoxDecoration(
border: Border.all(
      color: Color(0xffEB7D22), // set the border color here
      width: .6, // set the border width here
    ),
borderRadius:BorderRadius.circular(10),
            ),
            child: TextButton(
              
              onPressed: () {
               setState(() {
                _selectedIndex = 0;
              });

            },
             style: ButtonStyle(
              backgroundColor: _selectedIndex == 0
                  ? MaterialStateProperty.all<Color>(Color(0xffEB7D22))
                  : null,
            ),
             child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
               Text("Monthly",style: TextStyle(
                  color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700,),),

                  RichText(
  text: TextSpan(
    children: [
      TextSpan(
        text: '\$5.00 /',
        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black), // set the larger font size here
      ),
      TextSpan(
        text: 'Month ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Colors.black),
        // set the smaller font size here
      ),
    ],
  ),
)
              ],
            )),
          ),

SizedBox(height: 35,),
  Container(
            height: 51,
            width: 320,
            decoration: BoxDecoration(
border: Border.all(
      color: Color(0xffEB7D22), // set the border color here
      width: .6, // set the border width here
    ),
borderRadius:BorderRadius.circular(10),
            ),
            child: TextButton(
              
              onPressed: () {
                setState(() {
                _selectedIndex = 1;
              });
            },
             style: ButtonStyle(
              backgroundColor: _selectedIndex == 1
                  ? MaterialStateProperty.all<Color>(Color(0xffEB7D22))
                  : null,
            ),
            
             child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
               Text("Yearly",style: TextStyle(
                  color:Colors.black, fontSize: 18, fontWeight: FontWeight.w700,),),

                  RichText(
  text: TextSpan(
    children: [
      TextSpan(
        text: '\$5.00 /',
        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700, color: Colors.black), // set the larger font size here
      ),
      TextSpan(
        text: 'Year ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Colors.black),
        // set the smaller font size here
      ),
    ],
  ),
)
              ],
            )),
          ),

SizedBox(height: 30,),
 Container(
            height: 51,
            width: 320,
            decoration: BoxDecoration(
border: Border.all(
      color: Color(0xffEB7D22), // set the border color here
      width: .6, // set the border width here
    ),
borderRadius:BorderRadius.circular(10),
            ),
            child: TextButton(
              
              onPressed: () {
               setState(() {
                _selectedIndex = 2;
              });
            },
             style: ButtonStyle(
              backgroundColor: _selectedIndex == 2
                  ? MaterialStateProperty.all<Color>(Color(0xffEB7D22))
                  : null,
            ),
             child: Text("Subscribe With Coupon Code",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color: Colors.black,))),
          ),

SizedBox(height: 50,),
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
                    child: Text("Continue",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text("Resore Purchases",
                        style: TextStyle(
                          fontSize: 12,
                            color: Color(0xffEB7D22), fontWeight: FontWeight.w600)),
                            SizedBox(height: 50,),
                            Center(
                              child: Text("Unless you Cancel at least 24 hours before the\n end of the month, Until will be automatically charged \$ 10.00 for next month's Subscription. ",
                        style: TextStyle(
                          fontSize: 12,
                              color:Colors.black, fontWeight: FontWeight.w600)),
                            ),

                ],
              ),
            ),
          ),
        )),
    );

  }
}