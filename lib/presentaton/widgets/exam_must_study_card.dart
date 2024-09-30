import 'package:flutter/material.dart';

class ExamMustStudyCard extends StatelessWidget {
  const ExamMustStudyCard({
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
      width: 116,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colors,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(0, 3),
            blurRadius: 3,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icons,
            size: 40,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight:  FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
