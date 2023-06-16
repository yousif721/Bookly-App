import 'package:bookly_app/core/utils/styels.dart';
import 'package:flutter/material.dart';
import '../../../../home/presentation/views/widgets/best_seller_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right:10,top:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 15),
          Text('Search Result',
              style: Styles.textStyle18,
            ),
          SizedBox(height: 15),
          Expanded(child: SearchResultListView())
        ],
      ),
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context , index){
        return const  Padding(
          padding:  EdgeInsets.symmetric(vertical: 5.0),
         child: Text('hello'),
         /// child:  BookListViewItem(),
        );
      },
    );
  }
}



