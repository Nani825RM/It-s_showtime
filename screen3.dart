import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.deepPurpleAccent,title:Center(child: Text('Webseries Movies',style: TextStyle(fontSize: 30,color: Colors.white),)),),
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
                      color: Colors.redAccent,
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi0l0jP8fzmT9Z8lHgUYXQ2usgHN_IromFSw&s',
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
                                            Text('sai ram theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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
                      color: Colors.redAccent,
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX0YeAet645vXq1aQ3xNZTGzYjumLdxn53kA&s',
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
                                            Text('sairam theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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
                      color: Colors.redAccent,
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtJ8KB1zv-_VLbEN_IfzUg4B4hb1jxUXDP2g&s',
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
                            Text('5.00k review'),
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
                                            Text('sairam theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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
                      color: Colors.redAccent,
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlRdFKsGY55YpWZPdUSwgAjR34CJvrS2_KjQ&s',
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
                            Text('11.00k review'),
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
                                            Text('sariram theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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
                      color: Colors.redAccent,
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3UKJV7vCm4Q9pX0zMfXbrEWiQTyaFZIhMYA&s',
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
                                            Text('sairam theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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
                      color: Colors.redAccent,
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
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsWzKwIftSEY4-TKYxGzUzuPuD3rQykAqyOA&s',
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
                                            Text('sairam theatre 2D Tel/hin/eng',style: TextStyle(fontSize: 25,color: Colors.white),),
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

