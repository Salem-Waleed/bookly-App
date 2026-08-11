import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView(),),
      GoRoute(path: AppRoute.kHomeView, builder: (context, state) => const HomeView(),),
    ],
  );
}


abstract class AppRoute{
    static const kHomeView = '/homeView';
}