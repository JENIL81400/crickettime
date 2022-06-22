

import 'package:cricket_time/data.dart';
import 'package:cricket_time/plyaerdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class plyaer extends StatefulWidget {

  int pos;
  String catname;
  String image;
  plyaer(this.pos, this.catname,this.image);


  @override
  _plyaerState createState() => _plyaerState();
}

class _plyaerState extends State<plyaer> {

  List templist =[];

  @override
  void initState() {
  // TODO: implement initState
  super.initState();

  if (widget.pos == 0) {

  templist = data.rcb_plyaer;
  }
  if (widget.pos == 1) {
    templist = data.kkr_plyaer;
  }
  if (widget.pos == 2) {
    templist = data.delhi_plyaer;
  }
  if (widget.pos == 3) {
    templist = data.mumbai_plyaer;
  }
  if (widget.pos == 4) {
    templist = data.csk_plyaer;
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "${widget.catname}",
        ),
      ),
      body: ListView.builder(
        itemCount: templist.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Container(
                height: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff00F260),
                      Color(0xff0575E6),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    templist[index],
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                  ),
                ),
              ),
              leading: Container(
                width: 45,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("photos/${data().team1[index]}"),
                  ),
                ),
              ),
              onTap: () {
                String photos="photos/${data().team1[index]}";
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return   plyaerdetails(index, templist);  //Love1(index, templist);
                  },
                ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}


