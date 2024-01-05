import 'package:flutter/material.dart';
import 'package:mountain_app/main.dart';

class Discription extends StatelessWidget {
  List names;
  var index;
  List images;
  var screenHeight;
  var screenWidth;
  var discription;

  Discription(
      this.names, this.index, this.images,this.discription, this.screenHeight, this.screenWidth);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(names[index],
            style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500,
              fontSize: 24,
            )),
        automaticallyImplyLeading: false,
      ),
      body: Hero(
          tag: names[index],
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(child: Text(discription[index],style: TextStyle(fontSize: 18),),),
                  ))
            ],
          )),
    );
  }
}
