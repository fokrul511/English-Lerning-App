import 'package:english_lerning_app/presentaton/utility/asset_path.dart';
import 'package:english_lerning_app/presentaton/utility/colors.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                AssetsPath.underDevelopmentImage,
              ),
              width: 300,
            ),
            Text(
              "This page is now under development",
              style: TextStyle(
                fontSize: 18,
                color: CustomColor.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
