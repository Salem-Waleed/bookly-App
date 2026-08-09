import 'package:bookly_app/core/Utils/assets.dart';
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
           SizedBox(
            height: 50,
          ),
          Text('Best Seller',style: Style.titleMediium,),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.deepOrangeAccent,
            image: const DecorationImage(image: AssetImage(AssetsData.textImage,),fit: BoxFit.fill),
          ),
        ),
      ),
      Column(
        children: [
          
        ],
      )
        ],
      ),
    );
  }
}