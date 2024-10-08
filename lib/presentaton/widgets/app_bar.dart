import 'package:english_lerning_app/presentaton/utility/colors.dart';
import 'package:flutter/material.dart';

int _cartItemsNo = 1;
//top Level function..

PreferredSizeWidget get profileAppBar {
  return AppBar(
    iconTheme: const IconThemeData(color: Colors.white),
    backgroundColor: CustomColor.primaryColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "EnglishLerning",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Badge(
            label: Text(_cartItemsNo.toString()),
            child: const Icon(
              Icons.notifications,
              size: 30,
              color: Color(0xfffbc107),
            ),
          ),
        )
      ],
    ),
  );
}
