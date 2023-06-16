import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styels.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push('/bookDetailsView',extra: bookModel );
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.smallThumbnail ?? ''),
            const SizedBox(height: 20),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child:  Text( bookModel.volumeInfo.title!,
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                   Text( bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle14
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text('Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                       BookRating(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                         count: bookModel.volumeInfo.ratingsCount ?? 0,
                       ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


