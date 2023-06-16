import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: CustomButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15)),
              text: 'Free',
            fontSize: 18,
          ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                launchCustomUrl( context, bookModel.volumeInfo.previewLink);
              },
            backgroundColor: Colors.deepOrangeAccent,
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)
            ),
            text: getText(bookModel),
              fontSize:16,
          ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null){
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
