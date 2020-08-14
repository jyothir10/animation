import 'package:flutter/material.dart';

class ComponentsCard extends StatelessWidget {
  final String img;
  final String name;
  final String qty;
  final String price;
  final String tag;
  final Function onpress;

  ComponentsCard({this.tag,this.onpress,this.name, this.qty, this.img, this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 250,
        width: 180,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
                  child: Hero(
                    tag: tag,
                    child: Image(image: AssetImage(img),
                    height: 100,),
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                Text(
                  name,
                  style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                ),
                Text(
                  qty,
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}