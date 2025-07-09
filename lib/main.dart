import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_learning/home_screen.dart';
import 'package:go_router_learning/login_screen.dart';
import 'package:go_router_learning/model/user_model.dart';
import 'package:go_router_learning/price_screen.dart';
import 'package:go_router_learning/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: route,
    );
  }
}

final GoRouter route = GoRouter(
  initialLocation: '/login',
  routes: <RouteBase>[
    GoRoute(
      path: '/login',
      name: '/login',
      builder: (context, state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: '/home',
      name: '/home',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/profile',
      name: '/profile',
      builder: (context, state) {
        final args = state.extra as Map<String, dynamic>;
        final user = args['user'] as UserModel;
        final title = args['title'] as String;
        return ProfileScreen(
          user: user,
          title: title,
        );
      },
    ),
    GoRoute(
      path: '/price/:amount/:itemName',
      name: '/price',
      builder: (context, state) {
        final price = state.pathParameters['amount'];
        final itemName = state.pathParameters['itemName'];

        return PriceScreen(
          price: double.parse(price!),
          itemName: itemName!,
        );
      },
    ),
  ],
);
