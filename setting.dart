
import 'package:flutter/material.dart';
import 'package:power_in_excellence/change_pasward.dart';
import 'package:power_in_excellence/privacy_policy.dart';
import 'package:power_in_excellence/term_condition.dart';

import 'Notification.dart';
import 'about.dart';
class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            " Settings",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationSwitchScreen(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      "Notifications Settings",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    leading: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationSwitchScreen(),
                            ),
                          );
                        },
                        icon: Container(
                          height: 38,
                          width: 38,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                           color: Color(0xff000000).withOpacity(.10),
                         ),
                          child: Icon(Icons.notifications))),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationSwitchScreen(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangePasward(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      "Change Password",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    leading: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChangePasward(),
                            ),
                          );
                        },
                        icon: Container(
                          height: 38,
                          width: 38,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                           color: Color(0xff000000).withOpacity(.10),
                         ),
                          child: Image.asset("assets/pasward.png"),)),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChangePasward(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios)),
                  ),
                ),

 GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TermAndCondition(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    leading: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TermAndCondition(),
                            ),
                          );
                        },
                        icon: Container(
                          height: 38,
                          width: 38,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                           color: Color(0xff000000).withOpacity(.10),
                         ),
                          child: Image.asset("assets/term.png"),)),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TermAndCondition(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios)),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrivacyPolicy(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      "Privacy Policy",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: IconButton(
                        style: IconButton.styleFrom(shadowColor: Colors.grey),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrivacyPolicy(),
                            ),
                          );
                        },
                        icon: Container(
                           height: 38,
                          width: 38,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                           color: Color(0xff000000).withOpacity(.10),
                         ),
                         child: Image.asset("assets/privacy.png"),
                          )),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrivacyPolicy(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios)),
                  ),
                ),
              
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => About(),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      "About",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    leading: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => About(),
                            ),
                          );
                        },
                        icon: Container(
                           height: 38,
                          width: 38,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                           color: Color(0xff000000).withOpacity(.10),
                         ),
                          child: Image.asset("assets/about.png"),
                          ),
                          ),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => About(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_forward_ios)),
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
