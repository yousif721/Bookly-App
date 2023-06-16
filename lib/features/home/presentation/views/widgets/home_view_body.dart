import 'package:flutter/material.dart';
import '../../../../../core/utils/styels.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewbody extends StatelessWidget {
  const HomeViewbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child : Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CustomAppBar(),
                ),
                FeaturedBooksListView(),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Newest Books', style: Styles.textStyle18,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
           const SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: BestSellerListView(),
            ),
          ),
      ],
    );

  }
}











