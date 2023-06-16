import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styels.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key,  this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count}) : super(key: key);

  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final num count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber.withOpacity(0.9),
          size: 20,
        ),
        const SizedBox(width: 6.5),
         Text(rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text('($count)',
          style: Styles.textStyle14.copyWith(
            color: Colors.grey,
          ),
        )

      ],
    );
  }
}
