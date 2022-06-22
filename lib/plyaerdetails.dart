import 'package:cricket_time/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class plyaerdetails extends StatefulWidget {

  int pos1;
  List catname1;

  plyaerdetails(this.pos1, this.catname1);

  @override
  _plyaerdetailsState createState() => _plyaerdetailsState();
}
class _plyaerdetailsState extends State<plyaerdetails> {

  List templist = [];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(widget.catname1[widget.pos1]),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {},
            title: InkWell(
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 300,
                alignment: Alignment.center,
                //child: Text(widget.catname1[widget.pos1]),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("photos/${data().team1[widget.pos1]}"),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff0f7c90),
                      Color(0xff672b63),
                      Color(0xff67843e),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Color(0xff0f7c90),
                  Color(0xff672b63),
                  Color(0xff67843e),
                ],
              ),
            ),
            child: Text(widget.catname1[widget.pos1],
              style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white54),),
          ),
        ],
      ),
    );
  }
}

