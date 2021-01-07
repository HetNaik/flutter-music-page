import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      //appBar: AppBar(title: Text('MUSIFY')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(Icons.arrow_back,
                        color: Colors.grey.shade700, size: 18),
                  ),
                  Text('PLAYING NOW',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold)),
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child:
                        Icon(Icons.menu, color: Colors.grey.shade700, size: 18),
                  ),
                ]),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
              child: Container(
            height: 260,
            width: 260,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(160)),
            padding: EdgeInsets.all(3),
            child: CircleAvatar(
              backgroundImage: AssetImage('image.jpg'),
              maxRadius: 160,
            ),
          )),
          SizedBox(height: 30),
          Text(
            'Bekhayali',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 8),
          Text(
            'Arijit Singh',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade500,
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            //padding: EdgeInsets.only(left:20,right:20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '2:40',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade500,
                  ),
                ),
                Text(
                  '5:20',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
          ),
          // ignore: missing_required_param
          Slider(value: 1, min: 0, max: 2),
          SizedBox(
            height: 30,
          ),
          Center(
              child: Row(
            children: <Widget>[
              Bot_ic(Icons.skip_previous)
            ],
          ))
        ],
      ),
    );
  }
}

class Bot_ic extends StatelessWidget {
  final Icon icon;
  const Bot_ic({
    Key key,this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child:
           icon);
  }
}
