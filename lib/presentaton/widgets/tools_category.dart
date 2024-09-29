import 'package:flutter/material.dart';

class ToolsCategory extends StatelessWidget {
  const ToolsCategory({
    super.key,
    required this.title,
    required this.icons,
    this.onTap,
    required this.colors,
  });

  final String title;
  final IconData icons;
  final VoidCallback? onTap;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Icon(
              icons,
              size: 40,
              color: colors,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,

            ),
          )
        ],
      ),
    );
  }
}
