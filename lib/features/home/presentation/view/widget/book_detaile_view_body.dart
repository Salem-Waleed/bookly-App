import 'package:bookly_app/features/home/presentation/view/widget/book_details_section.dart';

import 'package:bookly_app/features/home/presentation/view/widget/custom_book_detaile_appbar.dart';

import 'package:bookly_app/features/home/presentation/view/widget/similer_books_section.dart';
import 'package:flutter/material.dart';

class BookDetaileViewBody extends StatelessWidget {
  const BookDetaileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetaileAppBar(),
                const BookDetailsSection(),

                const Expanded(child: SizedBox(height: 50)),
                const SimilerBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
