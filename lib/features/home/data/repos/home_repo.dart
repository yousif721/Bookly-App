import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model/book_model.dart';

abstract class HomeRepo{
   // Either class >>>>> in left side (failure) in right side (success)
   Future <Either< Failure ,List<BookModel>>> featchNewsetBooks();
   Future <Either< Failure ,List<BookModel>>> featchFeaturedBooks();
   Future <Either< Failure ,List<BookModel>>> fetchSimilarBooks({required String category});

}