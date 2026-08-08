import 'package:bookly_app/core/Utils/assets.dart';
import 'package:flutter/material.dart';

class CustomlistViewItem extends StatelessWidget {
  const CustomlistViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.deepOrangeAccent,
            image: const DecorationImage(image: AssetImage(AssetsData.textImage,),fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
