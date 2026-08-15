import 'package:bookly_app/core/Utils/style.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_ratting.dart';
import 'package:bookly_app/features/home/presentation/view/widget/books_action.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});
  
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG8I6ZtKerJ4rDUoZcLaPjjf8bEiOWhyW6HFE8o-hAGg&s=10',
          ),
        ),
        const SizedBox(height: 43),
        const Text('The Jungle Book', style: Style.textStyly30),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: const Text('Rudyard Kipling  ', style: Style.textStyly18),
        ),
        const SizedBox(height: 6),

        const BookRatting(
          ratting: 10,
          count: 10,
          mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
