import 'package:bookly_app/core/Utils/style.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/view/widget/featured_list_view_items.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppbar(),
          FeaturedBooksListView(),
          const SizedBox(
            height: 50,
          ),
          Text('Best Seller',style: Style.titleMediium,),
        ],
      ),
    );
  }
}

