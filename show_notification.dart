import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Notifications",
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
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Column(
                children: [
                  Material(
                    elevation: 2,
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                        title: Text("Notification"),
                        subtitle: Text("Notification text will appear here notification text."),
                        trailing: Icon(Icons.email_outlined,color: Color(0xffEB7D22),),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Material(
                    elevation: 2,
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                        title: Text("Notification"),
                        subtitle: Text("Notification text will appear here notification text."),
                        trailing: Icon(Icons.email_outlined,),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Material(
                    elevation: 2,
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                        title: Text("Notification"),
                        subtitle: Text("Notification text will appear here notification text."),
                        trailing: Icon(Icons.email_outlined),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
