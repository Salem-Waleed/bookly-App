import 'package:bookly_app/features/home/presentation/view/widget/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [CustomAppbar(),
    CustomlistViewItem(),
    ]);
  }
}

