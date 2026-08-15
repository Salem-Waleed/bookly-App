import 'package:bookly_app/core/Utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatting extends StatelessWidget {
  const BookRatting({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.ratting,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final int ratting;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        FaIcon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4f), size: 14),
        const SizedBox(width: 6.3),
        Text(
          
          (ratting * .5 / 10).toInt().toString(),
          style: Style.textStyly16,
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text(
            '($count)',
            style: Style.textStyly14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
