import 'package:english_lerning_app/presentaton/utility/colors.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.ontap,
    this.icons,
  });

  final String title;
  final VoidCallback? ontap;
  final IconData? icons;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300,
          ),
        ),
        IconButton(
          onPressed: ontap,
          icon: Icon(
            icons,
            size: 25,
            color: CustomColor.primaryColor,
          ),
        )
      ],
    );
  }
}
