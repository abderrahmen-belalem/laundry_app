import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundry/detailes.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        fit: StackFit.loose,
        children: <Widget>[
          ClipPath(
            clipper: ClippingGlass(),
            child : Container(
            width: double.infinity,
              height: MediaQuery.of(context).size.height*4/7,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0XFF40DEDF), Color(0XFF0FB2EA)]
                )
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 90,
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset("assets/profile.jpg"),
            ),
          ),
          Positioned(
            left: 20,
            top: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hi Abderrahmen",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Get your laundry whashed, folded \nand delivered straight to your door.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 320,
            right: 20,
            child: Column(
              children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Detailes()));
                    },
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _customCard(
                        imageUrl: "washing-machine.png",
                        item: "Wash",
                        duration: "1 Day"
                    ),
                    _customCard(
                        imageUrl: "dry.png",
                        item: "Dry",
                        duration: "3 Days"
                    )
                  ],
                ),
                ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _customCard(
                    imageUrl: "clean.png",
                    item: "Premium",
                    duration: "3 Days"
                ),
                _customCard(
                    imageUrl: "shoe.png",
                    item: "Others",
                    duration: "3 Days"
                )
              ],
            ),
                ]
          )
          )
        ],
      ),
    );
  }
  _customCard({String imageUrl, String item, String duration}){
    return SizedBox(
      height: 168,
      width: 150,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/" + imageUrl),
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item,
                      style: TextStyle(
                        fontSize: 24
                      ),
                    ),
                    Text(duration)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class ClippingGlass extends CustomClipper<Path>{
  @override

  Path getClip(Size size) {
   var path = Path();
   path.lineTo(0.0, size.height);
   var controlPoint = Offset(size.width - (size.width / 2), size.height - 120);
   var endPoint = Offset(size.width, size.height);
   path.quadraticBezierTo(
       controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
   path.lineTo(size.width, 0.0);
   path.close();
   return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
  }

