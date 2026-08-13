import 'package:bookly_app/features/home/presentation/view/widget/book_detaile_view_body.dart';
import 'package:flutter/material.dart';

class BookDetaileView extends StatelessWidget {
  const BookDetaileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: const BookDetaileViewBody()));
  }
}
