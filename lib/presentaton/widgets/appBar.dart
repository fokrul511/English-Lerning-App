import 'package:english_lerning_app/presentaton/utility/colors.dart';
import 'package:english_lerning_app/presentaton/views/home_screen.dart';
import 'package:flutter/material.dart';

int _cartItemsNo = 1;
//top Level function..

PreferredSizeWidget get profileAppBar {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: CustomColor.primaryColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "EnglishLerning",
          style: TextStyle(color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: Badge(
            label: Text(_cartItemsNo.toString()),
            child: const Icon(
              Icons.notifications,
              size: 25,
              color: Color(0xfffbc107),
            ),
          ),
        )
      ],
    ),
  );
}
