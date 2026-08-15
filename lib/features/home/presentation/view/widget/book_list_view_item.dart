import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/Utils/app_router.dart';

import 'package:bookly_app/core/Utils/style.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_ratting.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRoute.kBookDetaileView),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 3),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Style.textStyly20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                   bookModel.volumeInfo.authors?.firstOrNull ?? 'no author',
                  maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    style: Style.textStyly14,
                  ),
                  const SizedBox(height: 3),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'Free',
                          style: Style.textStyly18.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                         BookRatting(
                          ratting: bookModel.volumeInfo.pageCount!,
                          count:  bookModel.volumeInfo.pageCount!,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
