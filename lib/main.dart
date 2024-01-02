import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mountains App",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List images = [
    "assets/images/Kanchanjunga1.jpg",
     "assets/images/Fishtail1.jpg",
    "assets/images/Mt. Everest1.jpg",
  ];

  List names = [
    "Mt. Kanchanjunga",
    "Mt. Machhapuchhre",
    "Mt. Everest"
  ];




  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

// Get screen width and height:
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        title:  Text("Mountains", style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.w500, fontSize: 24,)),
        actions: [
          IconButton(onPressed: (){}, icon:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.blueGrey,),
          ),),
        ],
        backgroundColor: Colors.white,
      ),
      body:PageView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) => Stack(
          children:[ Container(
            width: screenWidth,
            height: screenHeight,
            child: Image.asset(
              images[index],
              fit: BoxFit.cover,),
          ),
            Positioned(
              bottom: 40,
              left: 20,
              child: ElevatedButton(
                onPressed: (){},
                child: Text(names[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.blueGrey),)
            ),
        ),
        ]
      )
      ),
    );
  }
}
