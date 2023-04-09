import 'package:flutter/material.dart';

class Du extends StatefulWidget {
  const Du({super.key});

  @override
  State<Du> createState() => _DuState();
}

class _DuState extends State<Du> {
    List<String> _images = [    'https://img.freepik.com/free-vector/realistic-blurred-spring-background_52683-55622.jpg',

      'https://img.freepik.com/free-vector/realistic-blurred-spring-background_52683-55622.jpg',  
         'https://img.freepik.com/free-vector/realistic-blurred-spring-background_52683-55622.jpg', 
          'https://img.freepik.com/free-vector/realistic-blurred-spring-background_52683-55622.jpg',    'https://img.freepik.com/free-vector/realistic-blurred-spring-background_52683-55622.jpg',  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/r.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -40,
                  left: 5,
                  
                  
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/1.jpg'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                       color: Colors.white,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Page Name",style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),),
            ),
             SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text("Page category",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(width: 5,),
                  Icon(Icons.circle,size: 10,),
                  SizedBox(width: 5,),
                   Text("Free",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),),
                ],
              ),
            ),
               SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("110k members",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),),
                ),
      
       SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Description text Description text Description text Description text",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),),
                ),
                SizedBox(height: 10,),
                Container(height: 5,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffD0D0D0).withOpacity(.60),),
      
                 Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/1.jpg"),
                          radius: 30,
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Posted on April 5, 2023",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Here goes the caption of the uploaded image.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
             Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Image.network(_images[index]),
                  );
                },
              ),
            ),              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                       Image.asset("assets/heart.png"),
                        SizedBox(width: 8),
                        Text("Like"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.comment),
                        SizedBox(width: 8),
                        Text("Comments"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.share),
                        SizedBox(width: 8),
                        Text("Share"),
                      ],
                    ),
                  ],
                ),
              ),
               SizedBox(height: 10,),
                Container(height: 5,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffD0D0D0).withOpacity(.60),),

                   Container(height: 5,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffD0D0D0).withOpacity(.60),),
      
                 Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/mypic.jpg"),
                          radius: 30,
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Posted on April 5, 2023",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Here goes the caption of the uploaded image.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 200,
                  width: 330,
                  color: Colors.grey[200],
                  child: Center(
                    child:Image.asset("assets/r.jpg")
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                       Image.asset("assets/heart.png"),
                        SizedBox(width: 8),
                        Text("Like"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.comment),
                        SizedBox(width: 8),
                        Text("Comments"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.share),
                        SizedBox(width: 8),
                        Text("Share"),
                      ],
                    ),
                  ],
                ),
              ),
               SizedBox(height: 10,),
                Container(height: 5,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffD0D0D0).withOpacity(.60),),
          ],
        ),
      ),


    );

  }
}