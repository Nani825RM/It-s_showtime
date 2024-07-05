import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.deepPurpleAccent,title:Center(child: Text('Available Movies',style: TextStyle(fontSize: 30,color: Colors.white),)),),
      body:MyApp(),
    );
  }
}




class MyApp extends StatelessWidget {
  final List<String> imageUrls = [
    'https://via.placeholder.com/300',
    'https://via.placeholder.com/300',
    'https://via.placeholder.com/300',
    'https://via.placeholder.com/300',
    'https://via.placeholder.com/300',
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
                      color: Colors.grey,
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmUHIyWH7x85-7ALAvq-kq1NIgyVIhgoOHYg&s',
                                  // Replace with your image asset path
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.fill,
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
                                            Text('Kumar theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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
                              color: Colors.blue,
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
                      color: Colors.grey,
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
                                  'https://assets-in.bmscdn.com/discovery-catalog/events/et00310216-gmrgkzkmxy-landscape.jpg',
                                  // Replace with your image asset path
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.fitHeight,
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
                                            Text('Kumar theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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
                              color: Colors.blue,
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
                      color: Colors.grey,
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnRMURneE6JZFdI5jJimMbvvddvITXlMeiUvxd7fVqE4JNtOu61SOCthBsbEzSArAmvmQ&usqp=CAU',
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
                                            Text('Kumar theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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
                              color: Colors.blue,
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
                      color: Colors.grey,
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmAZngLnB268tcaGjkLiqqTRMILorY_b80tA&s',
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
                                            Text('Kumar theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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
                              color: Colors.blue,
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
                      color: Colors.grey,
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzOoEgkBPBlrg-JK5lOFDLt-ShjEDlaLYI3Q&s',
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
                                            Text('Kumar theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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
                              color: Colors.blue,
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
                      color: Colors.grey,
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU3flA3QwK8UO80w8PLWotoMW-1jeDBC8tbA&s',
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
            Text('Kumar theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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
                              color: Colors.blue,
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

