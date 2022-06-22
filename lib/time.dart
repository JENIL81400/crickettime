import 'package:cricket_time/data.dart';
import 'package:cricket_time/plyaer.dart';
import 'package:cricket_time/sizedata.dart';
import 'package:flutter/material.dart';


class Shayari extends StatefulWidget {
  const Shayari({Key? key}) : super(key: key);

  @override
  _ShayariState createState() => _ShayariState();
}

class _ShayariState extends State<Shayari> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          " IPL Teams ",
          style: TextStyle(
              fontSize: 30, fontFamily: "ALGER.TTF", color: Colors.green),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: data().photos.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightGreen,
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(data.l[index]),
              leading: Container(
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(fit: BoxFit.fill,
                    image: AssetImage("photos/${data().photos[index]}"),
                  ),
                ),
                // child: Image.asset("photo/${photos[index]}"),
              ),
              onTap: () {

                String photos="photos/${data().photos[index]}";
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return plyaer(index, data.l[index],photos);
                  },
                ));
              },
              trailing: Icon(Icons.chevron_right),
            ),
          );
        },
      ),
    );
  }

}