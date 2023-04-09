import 'package:flutter/material.dart';

class NotificationSwitchScreen extends StatefulWidget {
  @override
  _NotificationSwitchScreenState createState() =>
      _NotificationSwitchScreenState();
}

class _NotificationSwitchScreenState extends State<NotificationSwitchScreen> {
  bool switch1Value = false;
  bool switch2Value = false;
  bool switch3Value = false;

  void _handleSwitch1(bool value) {
    setState(() {
      switch1Value = value;
      switch2Value = false;
      switch3Value = false;
    });
  }

  void _handleSwitch2(bool value) {
    setState(() {
      switch1Value = false;
      switch2Value = value;
      switch3Value = false;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
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
        backgroundColor:Colors.transparent,
        elevation: 0,
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
               fontWeight: FontWeight.w600, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SwitchListTile(
            activeColor: Color(0xffEB7D22),
            title: Text(
              'App Notification',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                 ),
            ),
            value: switch1Value,
            onChanged: _handleSwitch1,
          ),
          Divider(
            indent: 2,
            endIndent: 2,
            thickness: .5,
            color: Color(0xffD7D7D7),
          ),
          SwitchListTile(
            activeColor: Color(0xffEB7D22),
            title: Text(
              ' App Notification',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  ),
            ),
            value: switch2Value,
            onChanged: _handleSwitch2,
          ),
         
          Divider(
            indent: 2,
            endIndent: 2,
            thickness: .5,
            color: Color(0xffD7D7D7),
          ),
        ],
      ),
    );
  }
}
