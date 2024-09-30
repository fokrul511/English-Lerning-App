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
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colors,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.white, width: 2),
            ),
            height: 50,
            width: 50,
            child: Icon(
              icons,
              color: Colors.white,
              size: 25,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(

            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
