import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.featchFeaturedBooks();

    result.fold((failure) { // fold is a either object return success object and failure

      // in failure
      emit(FeaturedBooksFailure(failure.errMessage));
    },
        // in success
            (books){
      emit(FeaturedBooksSuccess(books));
    });
  }
}