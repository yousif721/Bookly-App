import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styels.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item.dart';


class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Column(
      children: [
         Padding(
             padding: EdgeInsets.symmetric(
             horizontal: width * .1,
               ),
           child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail?? '',
          ),
        ),
        const SizedBox(height: 7),
         Text(bookModel.volumeInfo.title!,
          style: Styles.textStyle20,
           textAlign: TextAlign.center,
           maxLines: 2,
        ),
        const SizedBox(height: 5),
        Text(bookModel.volumeInfo.authors?[0] ?? '',
          style: Styles.textStyle18.copyWith(
              color :Colors.grey,
              fontStyle: FontStyle.italic
          ),
        ),
        const SizedBox(height: 5),
         BookRating(
              rating: bookModel.volumeInfo.averageRating?? 0.0,
              count: bookModel.volumeInfo.ratingsCount?? 0.0,
              mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height:15),
         BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
