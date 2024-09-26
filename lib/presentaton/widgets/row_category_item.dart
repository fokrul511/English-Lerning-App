import 'package:english_lerning_app/presentaton/utility/colors.dart';
import 'package:flutter/material.dart';

class RowCategoryaItem extends StatelessWidget {
  const RowCategoryaItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 70,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: CustomColor.primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Icon(
              Icons.picture_as_pdf,
              size: 45,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                'Pdf Course',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}