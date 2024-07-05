import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:first_project/app_screens/card.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 200,
        child: ListView(
        children: [
          DrawerHeader(child:Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                // Adjust border radius as needed
                child: Image.network(
                  'https://i.pinimg.com/236x/48/6c/a0/486ca00640b169300b48e9ceacd8e401.jpg',
                  // Replace with your image asset path
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
              Text('Nani'),
              Text('Nani@gmail.com')
            ],
          ),
          ),
          ListTile(
            onTap: () {
              
            },
            leading: Icon(Icons.home,size: 25,),
            title: Text('Home',style: TextStyle(fontSize: 25),),
          ),
          ListTile(
            onTap: () {

            },
            leading: Icon(Icons.info,size: 25,),
            title: Text('Info',style: TextStyle(fontSize: 25),),
          ),
          ListTile(
            onTap: () {

            },
            leading: Icon(Icons.contact_mail_rounded,size: 25,),
            title: Text('contact',style: TextStyle(fontSize: 25),),
          ),

          ListTile(
            onTap: () {

            },
            leading: Icon(Icons.help_center_outlined,size: 25,),
            title: Text('help',style: TextStyle(fontSize: 25),),
          ),

        ],
      ),
      ),
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          "It's ShowTime",
          style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),
        ),

        actions: [
          Icon(Icons.search_rounded),SizedBox(width: 10,),
          Icon(Icons.notifications,),SizedBox(width: 10,),
          Icon(Icons.qr_code,color: Colors.white,),SizedBox(width: 20,),

        ],

      ),
      body: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlCuaaSeT-Akpw-KEp1IAw9Mnz_k8MtvrTJg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoVBPoZXgBAxNKbGvjHgx2DxqnVl4A9o5eFg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc7pHqkQjnYeliNJPpfFzCqgqi8FWMRMv2sQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTplrAKvflV8xZkwwVLHviytHtgjpNGCqvfmw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcwXhi0wPUyfP4gxNFg6n9hmfvgSWVoa_KzA&s',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 300,
                    width: 360,
                    child: Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.8,
                          initialPage: 1,
                        ),
                        items: imageUrls.map((url) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.green,
                                ),
                                child:Container(
                                  height: 100,
                                  width: 300,
                                  child:   ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    // Adjust border radius as needed
                                    child: Image.network(
                                      url,
                                      // Replace with youurlr image asset path
                                      width: 150,
                                      height: 150,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: Center(child: Text("Streaming Moives",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepPurpleAccent),),),
                  ),SizedBox(height: 20,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 120,
                    width: 360,
                    child: Row(
                      children: [
                        Container(
                          width: 240,
                          height: 120,
                          child: Image.network(
                            'https://i.pinimg.com/736x/22/c3/6d/22c36dd357f922d57ee360a66fbcb79b.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 120,
                          child: Image.network(
                            'https://i.pinimg.com/236x/39/d2/8f/39d28f8bd962ce7e0f8e0e498cf0a264.jpg',
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),SizedBox(height: 20,),

              Column(
                children: [
                  Container(
                    color: Colors.black,
                    child: Center(child: Text("New movies",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),),
                  )
                ],
              ),

              Card(
                child:
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  // Adjust border radius as needed
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_Q8AHeckQrT_phf0omLGxMeMp4pc1vtPDcQ&s',
                    // Replace with your image asset path
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzOoEgkBPBlrg-JK5lOFDLt-ShjEDlaLYI3Q&s',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH6ZIpkuP_vPQS4Ev--k4IZ6HuaeVzhneTyw&s',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnRMURneE6JZFdI5jJimMbvvddvITXlMeiUvxd7fVqE4JNtOu61SOCthBsbEzSArAmvmQ&usqp=CAU',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://assets-in.bmscdn.com/discovery-catalog/events/et00310216-gmrgkzkmxy-landscape.jpg',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmUHIyWH7x85-7ALAvq-kq1NIgyVIhgoOHYg&s',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                ),


                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Column(
                children: [
                  Container(
                    color: Colors.black,
                    child: Center(child: Text("Web series",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),),
                  )
                ],
              ),
              Card(
                child:
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  // Adjust border radius as needed
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3UKJV7vCm4Q9pX0zMfXbrEWiQTyaFZIhMYA&s',
                    // Replace with your image asset path
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
SizedBox(height: 20,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsWzKwIftSEY4-TKYxGzUzuPuD3rQykAqyOA&s',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi0l0jP8fzmT9Z8lHgUYXQ2usgHN_IromFSw&s',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX0YeAet645vXq1aQ3xNZTGzYjumLdxn53kA&s',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtJ8KB1zv-_VLbEN_IfzUg4B4hb1jxUXDP2g&s',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX0YeAet645vXq1aQ3xNZTGzYjumLdxn53kA&s',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                ),


                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Column(
                children: [
                  Container(
                    color: Colors.black,
                    child: Center(child: Text("New Animations",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),),
                  )
                ],
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                height: 200,
                width: 360,
                child: Card(
                  child:
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    // Adjust border radius as needed
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXxHkNycg9x1zId1YbNOE_EKqSXHAFSMnYWj8L6pFTP2L0bmY_zPv1iNlTr_kIkChIT-Y&usqp=CAU',
                      // Replace with your image asset path

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),



              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTohH1jqVf_ctGezN6Xvw-gNy2tbe0NiYuOmQ&usqp=CAU',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhj13XHh1EK2ZSARaQ-HAgS3KmseF5NJiZMQ&usqp=CAU',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbWxaDMuJlV7exdgyuel7Ara1nUvfMvCyuaA&s',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCe5N19bWlPb_ow0Tg-YAf6GVeh_wuxx84NQ&usqp=CAU',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              // Adjust border radius as needed
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQto0yHyRwyCpIazgDaNf0mczpS1ASzjf-VVw&s',
                                // Replace with your image asset path
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      'Name:Movie',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        'rive',
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    )
                                  ],
                                ),


                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
