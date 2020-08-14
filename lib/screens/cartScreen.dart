import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animation/Components/Cartcard.dart';

class CartScreen extends StatefulWidget {
  static const String id = '/cart';
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 45, bottom: 20, left: 30),
              child: Row(
                children: <Widget>[
                  Text(
                    "Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                CartCard(
                  img:
                  "images/bion.jpg",
                  name: "Biona Organic \nWhite Spelt Fusillii",
                  price: "\$4.99",
                ),
                CartCard(
                  img:
                  "images/rummo.jpg",
                  name: "Rummo Fusilli\nNo 48 Pasta",
                  price: "\$14.99",
                ),
                CartCard(
                  img: "images/seggiano.jpg",
                  name: "Newman's Own Pasta\nSauce Socarooni",
                  price: "\$9.99",
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white10,
                            radius: 20,
                            child: Icon(
                              FontAwesomeIcons.car,
                              color: Colors.orange,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Delivery",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "\$30.00",
                        style: TextStyle(
                          color: Colors.white30,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "All orders of ₹40 or more \nqualify for FREE delivery",
                        style: TextStyle(
                          color: Colors.white30,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total:",
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "\$59.97",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 15,
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 10),
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
