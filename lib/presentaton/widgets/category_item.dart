import 'package:flutter/material.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({
    super.key,
    required this.title,
    required this.icons,
    required this.colors,
  });

  final String title;
  final IconData icons;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colors,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.white, width: 2),
            ),
            height: 60,
            width: 60,
            child: Icon(
              icons,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            title ,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          )
        ],
      ),
    );
  }
}
