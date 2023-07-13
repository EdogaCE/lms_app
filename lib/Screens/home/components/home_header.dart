// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lms/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 48, 44, 43),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     offset: const Offset(
        //       2.0,
        //       10.0,
        //     ),
        //     blurRadius: 15.0,
        //     spreadRadius: 0.0,
        //   ),
        // ],
      ),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SearchField(),
            IconBtnWithCounter(
              svgSrc: "assets/Cart Icon.svg",
              press: () => Navigator.pushNamed(context, CartScreen.routeName),
            ),
            IconBtnWithCounter(
              svgSrc: "assets/Bell.svg",
              numOfitem: 3,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
