import 'package:calcrush/presentation/game/screen/game_root.dart';
import 'package:calcrush/presentation/home/home_screen.dart';
import 'package:calcrush/presentation/ready/screen/ready_root.dart';
import 'package:calcrush/presentation/record/screen/record_root.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/ready',
      builder: (context, state) => const ReadyRoot(),
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
    GoRoute(
      path: '/record',
      builder: (context, state) => const RecordRoot(),
    ),
  ],
);