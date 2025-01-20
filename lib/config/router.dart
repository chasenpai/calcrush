import 'package:calcrush/presentation/home/screen/home_root.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeRoot(),
    ),
  ],
);