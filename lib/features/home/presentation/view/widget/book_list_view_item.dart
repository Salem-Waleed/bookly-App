import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/Utils/app_router.dart';
import 'package:bookly_app/core/Utils/assets.dart';
import 'package:bookly_app/core/Utils/style.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_ratting.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRoute.kBookDetaileView),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.deepOrangeAccent,
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.textImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
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
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Style.textStyly20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text('J.K Howing', style: Style.textStyly14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '19.99 &',
                        style: Style.textStyly20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRatting(),
                    ],
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
