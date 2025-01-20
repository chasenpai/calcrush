import 'package:calcrush/presentation/game/screen/game_root.dart';
import 'package:calcrush/presentation/home/screen/home_root.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeRoot(),
    ),
    GoRoute(
      path: '/game/:operator/:level',
      builder: (context, state) {
        final operator = int.parse(state.pathParameters['operator']!);
        final level = int.parse(state.pathParameters['level']!);
        return GameRoot(
          operator: operator,
          level: level,
        );
      },
    ),
  ],
);