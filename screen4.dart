import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.deepPurpleAccent,title:Center(child: Text(' Animations Movies',style: TextStyle(fontSize: 30,color: Colors.white),)),),
      body:MyApp(),
    );
  }
}




class MyApp extends StatelessWidget {
  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQto0yHyRwyCpIazgDaNf0mczpS1ASzjf-VVw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCe5N19bWlPb_ow0Tg-YAf6GVeh_wuxx84NQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbWxaDMuJlV7exdgyuel7Ara1nUvfMvCyuaA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhj13XHh1EK2ZSARaQ-HAgS3KmseF5NJiZMQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXxHkNycg9x1zId1YbNOE_EKqSXHAFSMnYWj8L6pFTP2L0bmY_zPv1iNlTr_kIkChIT-Y&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTohH1jqVf_ctGezN6Xvw-gNy2tbe0NiYuOmQ&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 150,

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              child:  ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                // Adjust border radius as needed
                                child: Image.network(
                                  imageUrls[0],
                                  // Replace with your image asset path
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,size: 15,)),
                            Text('10.00k review'),
                          ],
                        ),
                        Text('Movie'),SizedBox(height: 10,),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.deepPurpleAccent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(

                                        height: 300,
                                        width: 340,
                                        child: Column(
                                          children: [
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Text('1  2   3   4  5  6  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,),)
                                            ],),
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Container(
                                                height:50,
                                                width: 20,
                                                child: TextField(
                                                  style: TextStyle(fontSize: 30),
                                                ),
                                              )
                                            ],),
                                            SizedBox(height: 30,),
                                            Text('sailaja theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
                                            Text('200/- ',style: TextStyle(fontSize: 30,),),

                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            backgroundColor:Colors.transparent,
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                padding: EdgeInsets.all(16),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(50),
                                                          color: Colors.green

                                                      ),
                                                      height: 200,
                                                      width: 200,
                                                      child:  Column(children: [Icon(Icons.verified,size: 150,),Text('booking sucessfully')],),
                                                    ),
                                                    Text('Bottom Sheet Content'),
                                                    SizedBox(height: 16),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        // Close the bottom sheet
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('ok'),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );

                                        },
                                        child: Text('booknow'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );

                          },
                          child:Container(
                            padding: EdgeInsets.only(left: 5,bottom: 2),
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child:  Center(child: Text('Book now',style: TextStyle(fontSize: 16),)),
                          ),
                        ),

                      ],
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 150,

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              child:  ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                // Adjust border radius as needed
                                child: Image.network(
                                  imageUrls[1],
                                  // Replace with your image asset path
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,size: 15,)),
                            Text('9.00k review'),
                          ],
                        ),
                        Text('Movie'),SizedBox(height: 10,),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.deepPurpleAccent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(

                                        height: 300,
                                        width: 340,
                                        child: Column(
                                          children: [
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Text('1  2   3   4  5  6  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,),)
                                            ],),
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Container(
                                                height:50,
                                                width: 20,
                                                child: TextField(
                                                  style: TextStyle(fontSize: 30),
                                                ),
                                              )
                                            ],),
                                            SizedBox(height: 30,),
                                            Text('sailaja theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
                                            Text('200/- ',style: TextStyle(fontSize: 30,),),

                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            backgroundColor:Colors.transparent,
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                padding: EdgeInsets.all(16),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(50),
                                                          color: Colors.green

                                                      ),
                                                      height: 200,
                                                      width: 200,
                                                      child:  Column(children: [Icon(Icons.verified,size: 150,),Text('booking sucessfully')],),
                                                    ),
                                                    Text('Bottom Sheet Content'),
                                                    SizedBox(height: 16),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        // Close the bottom sheet
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('ok'),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );

                                        },
                                        child: Text('booknow'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );

                          },
                          child:Container(
                            padding: EdgeInsets.only(left: 5,bottom: 2),
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child:  Center(child: Text('Book now',style: TextStyle(fontSize: 16),)),
                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              ),SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 150,

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              child:  ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                // Adjust border radius as needed
                                child: Image.network(
                                  imageUrls[2],
                                  // Replace with your image asset path
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,size: 15,)),
                            Text('8.00k review'),
                          ],
                        ),
                        Text('Movie'),SizedBox(height: 10,),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.deepPurpleAccent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(

                                        height: 300,
                                        width: 340,
                                        child: Column(
                                          children: [
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Text('1  2   3   4  5  6  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,),)
                                            ],),
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Container(
                                                height:50,
                                                width: 20,
                                                child: TextField(
                                                  style: TextStyle(fontSize: 30),
                                                ),
                                              )
                                            ],),
                                            SizedBox(height: 30,),
                                            Text('sailaja theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
                                            Text('200/- ',style: TextStyle(fontSize: 30,),),

                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            backgroundColor:Colors.transparent,
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                padding: EdgeInsets.all(16),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(50),
                                                          color: Colors.green

                                                      ),
                                                      height: 200,
                                                      width: 200,
                                                      child:  Column(children: [Icon(Icons.verified,size: 150,),Text('booking sucessfully')],),
                                                    ),
                                                    Text('Bottom Sheet Content'),
                                                    SizedBox(height: 16),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        // Close the bottom sheet
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('ok'),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );

                                        },
                                        child: Text('booknow'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );

                          },
                          child:Container(
                            padding: EdgeInsets.only(left: 5,bottom: 2),
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child:  Center(child: Text('Book now',style: TextStyle(fontSize: 16),)),
                          ),
                        ),

                      ],
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 150,

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              child:  ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                // Adjust border radius as needed
                                child: Image.network(
                                  imageUrls[3],
                                  // Replace with your image asset path
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,size: 15,)),
                            Text('9.00k review'),
                          ],
                        ),
                        Text('Movie'),SizedBox(height: 10,),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.deepPurpleAccent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(

                                        height: 300,
                                        width: 340,
                                        child: Column(
                                          children: [
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Text('1  2   3   4  5  6  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,),)
                                            ],),
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Container(
                                                height:50,
                                                width: 20,
                                                child: TextField(
                                                  style: TextStyle(fontSize: 30),
                                                ),
                                              )
                                            ],),
                                            SizedBox(height: 30,),
                                            Text('sailaja theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
                                            Text('200/- ',style: TextStyle(fontSize: 30,),),

                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            backgroundColor:Colors.transparent,
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                padding: EdgeInsets.all(16),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(50),
                                                          color: Colors.green

                                                      ),
                                                      height: 200,
                                                      width: 200,
                                                      child:  Column(children: [Icon(Icons.verified,size: 150,),Text('booking sucessfully')],),
                                                    ),
                                                    Text('Bottom Sheet Content'),
                                                    SizedBox(height: 16),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        // Close the bottom sheet
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('ok'),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );

                                        },
                                        child: Text('booknow'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );

                          },
                          child:Container(
                            padding: EdgeInsets.only(left: 5,bottom: 2),
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child:  Center(child: Text('Book now',style: TextStyle(fontSize: 16),)),
                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              ),SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 150,

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              child:  ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                // Adjust border radius as needed
                                child: Image.network(
                                  imageUrls[4],
                                  // Replace with your image asset path
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,size: 15,)),
                            Text('8.00k review'),
                          ],
                        ),
                        Text('Movie'),SizedBox(height: 10,),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.deepPurpleAccent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(

                                        height: 300,
                                        width: 340,
                                        child: Column(
                                          children: [
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Text('1  2   3   4  5  6  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,),)
                                            ],),
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Container(
                                                height:50,
                                                width: 20,
                                                child: TextField(
                                                  style: TextStyle(fontSize: 30),
                                                ),
                                              )
                                            ],),
                                            SizedBox(height: 30,),
                                            Text('sailaja theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
                                            Text('200/- ',style: TextStyle(fontSize: 30,),),

                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            backgroundColor:Colors.transparent,
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                padding: EdgeInsets.all(16),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(50),
                                                          color: Colors.green

                                                      ),
                                                      height: 200,
                                                      width: 200,
                                                      child:  Column(children: [Icon(Icons.verified,size: 150,),Text('booking sucessfully')],),
                                                    ),
                                                    Text('Bottom Sheet Content'),
                                                    SizedBox(height: 16),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        // Close the bottom sheet
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('ok'),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );

                                        },
                                        child: Text('booknow'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );

                          },
                          child:Container(
                            padding: EdgeInsets.only(left: 5,bottom: 2),
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child:  Center(child: Text('Book now',style: TextStyle(fontSize: 16),)),
                          ),
                        ),

                      ],
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: 150,

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 150,
                              child:  ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                // Adjust border radius as needed
                                child: Image.network(
                                  imageUrls[5],
                                  // Replace with your image asset path
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,size: 15,)),
                            Text('10.00k review'),
                          ],
                        ),
                        Text('Movie'),SizedBox(height: 10,),
                        InkWell(
                          onTap: () {

                            showModalBottomSheet(
                              backgroundColor: Colors.deepPurpleAccent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(

                                        height: 300,
                                        width: 340,
                                        child: Column(
                                          children: [
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Text('1  2   3   4  5  6  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,),)
                                            ],),
                                            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
                                              Container(
                                                height:50,
                                                width: 20,
                                                child: TextField(
                                                  style: TextStyle(fontSize: 30),
                                                ),
                                              )
                                            ],),
                                            SizedBox(height: 30,),
                                            Text('sailaja theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
                                            Text('200/- ',style: TextStyle(fontSize: 30,),),

                                          ],
                                        ),
                                      ),

                                      SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            backgroundColor:Colors.transparent,
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                padding: EdgeInsets.all(16),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(50),
                                                          color: Colors.green

                                                      ),
                                                      height: 200,
                                                      width: 200,
                                                      child:  Column(children: [Icon(Icons.verified,size: 150,),Text('booking sucessfully')],),
                                                    ),
                                                    Text('Bottom Sheet Content'),
                                                    SizedBox(height: 16),
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        // Close the bottom sheet
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('ok'),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );

                                        },
                                        child: Text('booknow'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );

                          },
                          child:Container(
                            padding: EdgeInsets.only(left: 5,bottom: 2),
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child:  Center(child: Text('Book now',style: TextStyle(fontSize: 16),)),
                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              ),SizedBox(height: 30,),
            ],
          )
        ],
      ),
    );
  }
}

