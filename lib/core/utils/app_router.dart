import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

  abstract class AppRouter{
     static final router = GoRouter(
      routes: [
        GoRoute(
          path:'/', // slash only means start of app
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
          path:'/homeView',
          builder: (context, state) => const HomeView(),
        ),
        GoRoute(
          path:'/searchView',
          builder: (context, state) => const SearchView(),
        ),

        GoRoute(
          path:'/bookDetailsView',
          builder: (context, state) => BlocProvider(
            create: (context)=> SimilarBooksCubit(getIt.get<HomeRepoImp>()),
              child: BookDetailsView(
                bookModel: state.extra as BookModel, // extra means any object you want to pass to the next screen
              ),
              )
        ),
      ],
    );

  }