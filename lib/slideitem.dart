import 'package:flutter/material.dart';
import 'package:sliderwithcarousel/slides.dart';
class slideitem extends StatelessWidget {
  final int index;
  slideitem(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.95,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                    AssetImage(slidelist[index].imageUrl),
               )
            )
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25)
              ),
        Text(
            slidelist[index].title, textAlign: TextAlign.center,
            style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 13,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Text(
              slidelist[index].description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10)
          ),
        ),
      ],
    );
  }
}
