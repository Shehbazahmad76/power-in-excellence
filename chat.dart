import 'package:flutter/material.dart';

class CommentsScreen extends StatefulWidget {
  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  final TextEditingController _commentController = TextEditingController();
  List<Comment> _comments = [    Comment(        userAvatar: 'https://via.placeholder.com/50',        userName: 'Shehbaz Ahmad',        commentText: 'Hello hy there ',        commentTime: DateTime.now()),    Comment(        userAvatar: 'https://via.placeholder.com/50',        userName: 'Asif ali',        commentText: 'How are you dear!',        commentTime: DateTime.now().add(Duration(minutes: 5))),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        leading: IconButton(
    icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Comments",style: TextStyle(
          color: Colors.black,
          fontSize: 20,fontWeight: FontWeight.w700,
        ),),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _comments.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(_comments[index].userAvatar),
                  ),
                  title: Text(_comments[index].userName),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_comments[index].commentText),
                      SizedBox(height: 4),
                      Text(
                        _getTimeAgo(_comments[index].commentTime),
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Divider(height: 1),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                     height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
    border: Border.all(
      color: Color(0xffEB7D22),
      width: 1,
    ),
  ),
                    child: TextFormField(
                      controller: _commentController,
                      
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                                      left: 10.0, ),
                        border: InputBorder.none,
                        hintText: 'Add a comment',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  height: 36,
                  width: 37,
                  decoration: BoxDecoration(
                    color: Color(0xffEB7D22),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.send_sharp,color: Colors.white,),
                    onPressed: () {
                      setState(() {
                        _comments.add(
                          Comment(
                            userAvatar: 'data:image/jpeg;base64,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 ',
                            userName: 'Shehbaz Ahmad',
                            commentText: _commentController.text,
                            commentTime: DateTime.now(),
                          ),
                        );
                        _commentController.clear();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getTimeAgo(DateTime time) {
    Duration difference = DateTime.now().difference(time);
    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'just now';
    }
  }
}

class Comment {
  final String userAvatar;
  final String userName;
  final String commentText;
  final DateTime commentTime;

  Comment(
      {required this.userAvatar,
      required this.userName,
      required this.commentText,
      required this.commentTime});
}
