import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
   double _value = 0.0;
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
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(child: SingleChildScrollView(
          child: Container(
            child: 
            Column(
              children: [
                SizedBox(height: 20,),

                Center(child: Image.asset("assets/mu.png")),
                SizedBox(height: 20,),

                Text("Training Lecture",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xfffEB7D22)
                ),),
                SizedBox(height: 15,),
                Text("Sub Title",style: TextStyle(
                  fontSize: 12,fontWeight: FontWeight.w400,color:Colors.black
                ),),
                  SizedBox(height: 25,),

                  Center(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffEB7D22
).withOpacity(.10)
                      ),
                      child: IconButton(onPressed: 
                       () {
                             showDialog(
                            context: context,
                            builder: ((context) {
                              return SizedBox(
                                child: AlertDialog(
                                  title: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                         
                                          Column(
                                                children: [
                                                   Text("Share On", style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                        ),),
                                                
                                                ],
                                              ),
                                              
                                        ],
                                      ),
                                    ],
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                   
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                             Image.asset("assets/facebook.png"),
                                              SizedBox(height: 4.0),
                                              Text('Facebook',style: TextStyle(fontSize: 12),),
                                              SizedBox(height: 30,),
                                               Image.asset("assets/co.png"),
                                              SizedBox(height: 4.0),
                                              Text('Contacts',style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Image.asset("assets/whatsapp.png"),
                                              SizedBox(height: 4.0),
                                              Text('whatsapp',style: TextStyle(fontSize: 12),),
                                              SizedBox(height:30 ,),
                                              Image.asset("assets/mesenger.png"),
                                              SizedBox(height: 4.0),
                                              Text('Mesenger',style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                             Image.asset("assets/twitter.png"),
                                              SizedBox(height: 4.0),
                                              Text('twitter',style: TextStyle(fontSize: 12),),
                                              SizedBox(height:30 ,),
                                              Image.asset("assets/link.png"),
                                              SizedBox(height: 4.0),
                                              Text('Copy link',style: TextStyle(fontSize: 12),),
                                            ],
                                          ),
                                          
                                        ],
                                      ),
                              
                                    ],
                                  ),
                              
                                  
                                 
                                ),
                              );
                            }),
                          );

                       }, icon:Icon(Icons.share,color: Color(0xfffEB7D22),size: 25,)),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
Image.asset("assets/volume.png"),
IconButton(onPressed: () {
  
}, icon: Icon(CupertinoIcons.backward_end_fill,size: 12,)),
IconButton(onPressed: () {
  
}, icon: Icon(CupertinoIcons.play_arrow_solid,color: Color(0xfffEB7D22), size: 20,)),

IconButton(onPressed: () {
  
}, icon: Icon(CupertinoIcons.forward_end_fill,size: 12,)),
Image.asset("assets/vo.png"),


                    ],
                  ),
                Slider(
      value: _value,
      onChanged: (newValue) {
        setState(() {
          _value = newValue;
        });
      },
      min: 0,
      max: 100,
      activeColor: Color(0xfffEB7D22),
      inactiveColor:Color(0xffCBCBCB),
      label: '$_value',
     
    ),
    SizedBox(height: 5,),
    Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text("3:40",style: TextStyle(
                    fontSize: 12,fontWeight: FontWeight.w400,color:Colors.black
                  ),),
                  Text("10:13",style: TextStyle(
                    fontSize: 12,fontWeight: FontWeight.w400,color:Colors.black
                  ),)
      ],),
    )
              ],
            ),
          ),
        )),
    );
  }
}