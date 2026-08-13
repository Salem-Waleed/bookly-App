import 'package:bookly_app/features/home/presentation/view/book_detaile_view.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:bookly_app/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView(),),
      GoRoute(path: AppRoute.kHomeView, builder: (context, state) => const HomeView(),),
      GoRoute(path: AppRoute.kBookDetaileView, builder: (context, state) => const BookDetaileView(),),
      GoRoute(path: AppRoute.kSearchView, builder: (context, state) => const SearchView(),),
    ],
  );
}


abstract class AppRoute{
    static const kHomeView = '/homeView';
    static const kBookDetaileView = '/bookDetaileView';
    static const kSearchView = '/searchView';
}