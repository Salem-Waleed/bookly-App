import 'package:bookly_app/features/home/presentation/view/widget/custom_book_detaile_appbar.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetaileViewBody extends StatelessWidget {
  const BookDetaileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =  MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
         CustomBookDetaileAppBar(),
         Padding(
           padding: EdgeInsets.symmetric(
            horizontal: width * .17 ,
            vertical: 15),
           child: CustomBookItem(),
         ),
        ],
      ),
    );
  }
}

