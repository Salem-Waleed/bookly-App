import 'package:bookly_app/core/Utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedlistViewItem extends StatelessWidget {
  const FeaturedlistViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.deepOrangeAccent,
          image: const DecorationImage(image: AssetImage(AssetsData.textImage,),fit: BoxFit.fill),
        ),
      ),
    );
  }
}
