import 'package:flutter/material.dart';

import './detailakun.dart';

void main() => runApp(Beranda());

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: new AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            'Beranda',
          ),
        ]),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Click search');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              print('Click start');
            },
          ),
        ],
        backgroundColor: Colors.black87,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailAkun(
                    accountName: "Samsung Mobile Phone",
                    accountEmail: "www.samsungindonesia.co.id",
                    backgroundImage: "index2.jpg",
                  ),
                ));
              },
              child: UserAccountsDrawerHeader(
                accountName: new Text("Samsung Mobile Phone"),
                accountEmail: new Text("www.samsungindonesia.co.id"),
                currentAccountPicture: new GestureDetector(
                  onTap: () {},
                  child: new CircleAvatar(
                    backgroundImage: AssetImage('assets/appimages/index2.jpg'),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/appimages/bg_profile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            new ListTile(
              title: new Text('Notification'),
              trailing: new Icon(Icons.notifications_none),
            ),
            new ListTile(
              title: new Text('Wishlist'),
              trailing: new Icon(Icons.bookmark_border),
            ),
            new ListTile(
              title: new Text('Account'),
              trailing: new Icon(Icons.verified_user),
            ),
            Divider(
              height: 2,
            ),
            new ListTile(
              title: new Text('setting'),
              trailing: new Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          Image.asset("assets/appimages/samsung.jpg"),
          //setiap bagian pada body dipisahkan container
          Container(
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                colors: [const Color(0x8A000000), const Color(0x61000000)],
              ),
            ),
            padding: const EdgeInsets.all(10),
            //UNTUK MEMBUAT TAMPILAN SECARA HORISONTAL MAKA DIGUNAKAN ROW
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SAMSUNG MOBILE PHONE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Text(
                        'Choose Your Smartphone',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                Text('5'),
              ],
            ),
          ),
          //setiap bagian pada body dipisahkan container
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
              //untuk membuat tampilan secara horisontal makan digunakan row
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //UNTUK MEMBUAT TAMPILAN SECARA VERTIKAL MAKA DIGUNAKAN COLUMN
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone, color: Colors.yellow),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "CALL",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.shop, color: Colors.yellow),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "SHOP",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.share, color: Colors.yellow),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "SHARE",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orange, Colors.yellow],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Great Performance From Samsung',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Have a Discount 75%',
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Lets Check Now!'),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
