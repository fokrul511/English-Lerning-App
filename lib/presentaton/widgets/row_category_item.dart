import 'package:english_lerning_app/presentaton/utility/colors.dart';
import 'package:flutter/material.dart';

class RowCategoryaItem extends StatelessWidget {
  const RowCategoryaItem({
    super.key,
    required this.title,
    required this.icons,
  });

  final String title;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Icon(
              icons,
              size: 45,
              color: CustomColor.primaryColor,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
