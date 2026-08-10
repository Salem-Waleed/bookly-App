import 'package:bookly_app/core/Utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatting extends StatelessWidget {
  const BookRatting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4f)),
        const SizedBox(width: 6.3),
        const Text('4.8', style: Style.textStyly16),
        const SizedBox(width: 5),
        Text(
          '(2390)',
          style: Style.textStyly14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}