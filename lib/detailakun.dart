import 'package:flutter/material.dart';

class DetailAkun extends StatefulWidget {
  DetailAkun(
      {Key key, this.accountName, this.accountEmail, this.backgroundImage})
      : super(key: key);
  final String accountName;
  final String accountEmail;
  final String backgroundImage;
  @override
  _DetailAkunState createState() => _DetailAkunState();
}

class _DetailAkunState extends State<DetailAkun> {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("${widget.accountName}"),
        backgroundColor: Colors.black87,
      ),
      body: new Container(
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                new Image.asset("assets/appimages/" + widget.backgroundImage)
              ],
            ),
            Container(
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0x8A000000), const Color(0x61000000)],
                ),
              ),
              padding: EdgeInsets.all(10),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: childrenstar,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.grey,
              width: double.infinity,
              height: double.maxFinite,
              child: new Text(widget.accountEmail),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
