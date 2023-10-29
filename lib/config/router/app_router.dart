import 'package:go_router/go_router.dart';
import 'package:teslo_shop/features/auth/auth.dart';
import 'package:teslo_shop/features/home/home.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ///* Auth Routes
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/recovery',
      builder: (context, state) => const RecoveryScreen(),
    ),

    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
  ],

  ///! TODO: Bloquear si no se está autenticado de alguna manera
);
