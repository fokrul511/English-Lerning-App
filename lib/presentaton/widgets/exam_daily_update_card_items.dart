import 'package:flutter/material.dart';

class ExamDailyUpdateCardItems extends StatelessWidget {
  const ExamDailyUpdateCardItems({
    super.key, required this.title, required this.icons, required this.colors,
  });
final String title;
final IconData icons;
final Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 2,
              offset: const Offset(0, 3))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icons,
            size: 50,
            color: colors,
          ),
          Text(
           title,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
