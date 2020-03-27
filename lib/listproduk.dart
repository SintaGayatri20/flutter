import 'package:flutter/material.dart';

import './detailproduk.dart';

class Listproduk extends StatefulWidget {
  @override
  _ListprodukState createState() => _ListprodukState();
}

class _ListprodukState extends State<Listproduk> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.grey,
            appBar: AppBar(
                title: Text("Product Listing"),
                backgroundColor: Colors.black87),
            body: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
              children: <Widget>[
                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "Samsung Galaxy Fold",
                        description:
                            "Live out your futuristic fantasy with the premium.",
                        price: 100,
                        image: "fold.png",
                        star: 1,
                      ),
                    ));
                  },
                  child: ProductBox(
                      name: "Samsung Galaxy Fold",
                      description:
                          "Live out your futuristic fantasy with the premium.",
                      prince: 1000,
                      image: "fold.png"),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "Samsung Galaxy S20",
                        description:
                            "Live out your futuristic fantasy with the premium.",
                        price: 800,
                        image: "s20.png",
                        star: 4,
                      ),
                    ));
                  },
                  child: ProductBox(
                      name: "Samsung Galaxy S20",
                      description:
                          "Live out your futuristic fantasy with the premium.",
                      prince: 800,
                      image: "s20.png"),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "Samsung Galaxy S11",
                        description:
                            "Live out your futuristic fantasy with the premium.",
                        price: 2000,
                        image: "s11.png",
                        star: 3,
                      ),
                    ));
                  },
                  child: ProductBox(
                      name: "Samsung Galaxy S11",
                      description:
                          "Live out your futuristic fantasy with the premium.",
                      prince: 2000,
                      image: "s11.png"),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "Samsung Galaxy S9",
                        description:
                            "Live out your futuristic fantasy with the premium.",
                        price: 1500,
                        image: "s9.png",
                        star: 3,
                      ),
                    ));
                  },
                  child: ProductBox(
                      name: "Samsung Galaxy S9",
                      description:
                          "Live out your futuristic fantasy with the premium.",
                      prince: 1500,
                      image: "s9.png"),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => DetailProduk(
                        name: "Samsung Galaxy NOT10",
                        description:
                            "Live out your futuristic fantasy with the premium.",
                        price: 800,
                        image: "not10.png",
                        star: 5,
                      ),
                    ));
                  },
                  child: ProductBox(
                      name: "Samsung Galaxy NOT10",
                      description:
                          "Live out your futuristic fantasy with the premium.",
                      prince: 1000,
                      image: "not10.png"),
                ),
              ],
            )));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.prince, this.image})
      : super(key: key);
  final String name;
  final String description;
  final int prince;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        //height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(this.name,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(this.description),
                        Text(
                          "Prince: " + this.prince.toString(),
                          style: TextStyle(color: Colors.red),
                        ),
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Colors.deepOrange,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Colors.deepOrange,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Colors.deepOrange,
                                ),
                                Icon(Icons.star,
                                    size: 10, color: Colors.orange),
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              )
            ])));
  }
}
