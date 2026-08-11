import 'package:bookly_app/core/Utils/style.dart';

import 'package:bookly_app/features/home/presentation/view/widget/book_ratting.dart';
import 'package:bookly_app/features/home/presentation/view/widget/books_action.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_book_detaile_appbar.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetaileViewBody extends StatelessWidget {
  const BookDetaileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetaileAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomBookItem(),
          ),
          const SizedBox(height: 43),
          const Text('The Jungle Book', style: Style.textStyly30),
          const SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: const Text('Rudyard Kipling  ', style: Style.textStyly18),
          ),
          const SizedBox(height: 6),

          const BookRatting(mainAxisAlignment: MainAxisAlignment.center),
const SizedBox(height: 37),
          const BooksAction(),
        ],
      ),
    );
  }
}

