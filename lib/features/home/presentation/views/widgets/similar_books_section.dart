import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styels.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You Can Also Like',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w700,
            )
        ),
        const SizedBox(height: 15),
        const SimilarBooksListView(),
      ],
    );
  }
}
