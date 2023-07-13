// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              course(),
              SizedBox(
                width: 10,
              ),
              course(),
            ],
          ),
        ],
      ),
    );
  }
}

Widget course() {
  return Container(
    height: 150,
    width: 200,
    // margin: EdgeInsets.all(getProportionateScreenWidth(20)),
    // padding: EdgeInsets.symmetric(
    //   horizontal: getProportionateScreenWidth(20),
    //   vertical: getProportionateScreenWidth(15),
    // ),
    decoration: BoxDecoration(
      color: Color(0xFF4A3298),
      borderRadius: BorderRadius.circular(50),
      border: Border.all(width: 2, color: Colors.black),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        "assets/book.png",
        fit: BoxFit.fill,
      ),
    ),
  );
}
