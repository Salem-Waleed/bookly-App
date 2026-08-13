import 'package:bookly_app/core/Utils/style.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/view/widget/custom_search_text_field.dart';
import 'package:flutter/material.dart';


class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const[
          CustomSearchTextField(),
          Text('Search Result', style: Style.textStyly18),
           SizedBox(height: 20),

        Expanded(child: SearchResultListView()),
      
      ]),
    );
  }
}


class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(),
        );
      },
    );;
  }
}