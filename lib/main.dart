import 'package:flutter/material.dart';
import 'package:mountain_app/detailPage.dart';

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

  List names = ["Mt. Kanchanjunga", "Mt. Machhapuchhre", "Mt. Everest"];

  List discription = [
    "Mount Kanchenjunga, the third-highest peak in the world, stands majestically on the border between Nepal and India in the eastern Himalayas. Soaring to an elevation of 28,169 feet (8,586 meters), Kanchenjunga is renowned for its awe-inspiring beauty and challenging ascent. The mountain's name, meaning Five Treasures of Snow, reflects its five distinct peaks. Climbing Kanchenjunga is a formidable task, and the region is known for its extreme weather conditions and technical challenges. Due to its cultural significance, Kanchenjunga holds a special place in the hearts of the local communities, and climbing permits are carefully regulated",
    "Machhapuchhre, often referred to as the Fish Tail mountain, is a distinct and iconic peak nestled in the Annapurna region of the Himalayas in Nepal. Standing at 22,943 feet (6,993 meters) above sea level, this stunning mountain is renowned for its unique double-peaked summit resembling the tail of a fish. Unlike Mount Everest, Machhapuchhre has never been summited, as it holds cultural and religious significance in the local communities, and climbing permits for its main summit are restricted.",
    "Mount Everest, standing majestically at a breathtaking elevation of 29,032 feet (8,848 meters) above sea level, is the world's highest peak. This awe-inspiring mountain forms part of the formidable Himalayan range and straddles the border between Nepal and Tibet in Asia. Named after Sir George Everest, a British surveyor-general of India, the mountain is referred to as Sagarmatha in Nepal and Chomolungma in Tibet."
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery
        .of(context)
        .size;

// Get screen width and height:
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Mountains",
            style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500,
              fontSize: 24,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: PageView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) =>
              Stack(children: [
                Container(
                  width: screenWidth,
                  height: screenHeight,
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Discription(names, index,
                                        images,discription, screenHeight, screenWidth)));
                      },
                      child: Hero(
                          tag: names[index],
                          child: Text(
                            names[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.blueGrey),
                          ))),
                ),
              ])),
    );
  }
}
