import 'package:bookly_app/features/home/presentation/view/widget/custom_book_detaile_appbar.dart';
import 'package:flutter/material.dart';

class BookDetaileViewBody extends StatelessWidget {
  const BookDetaileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
        const CustomBookDetaileAppBar(),
        ],
      ),
    );
  }
}

