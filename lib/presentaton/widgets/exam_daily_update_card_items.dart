import 'package:flutter/material.dart';

class ExamDailyUpdateCardItems extends StatelessWidget {
  const ExamDailyUpdateCardItems({
    super.key,
  });

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
              offset: Offset(0, 3))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.home,
            size: 50,
          ),
          Text(
            "Home",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
