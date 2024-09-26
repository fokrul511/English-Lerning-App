import 'package:flutter/material.dart';

class exam_must_study_card extends StatelessWidget {
  const exam_must_study_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(0, 3),
            blurRadius: 3,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.book_rounded,
            size: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "NOTES BANGLA",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
