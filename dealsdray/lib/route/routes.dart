import 'package:dealsdray/design_system/label/label.dart';
import 'package:dealsdray/design_system/widget/brand_text.dart';
import 'package:dealsdray/route/route_name.dart';
import 'package:dealsdray/src/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter routerConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RouteName.slpash,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: RouteName.otp,
      builder: (BuildContext context, GoRouterState state) {
        return const SizedBox();
      },
    ),
    GoRoute(
      path: RouteName.register,
      builder: (BuildContext context, GoRouterState state) {
        return const SizedBox();
      },
    ),
    GoRoute(
      path: RouteName.error,
      builder: (BuildContext context, GoRouterState state) {
        return const Center(
          child: BrandText.primary(data: Strings.somethingWentWrong),
        );
      },
    ),
  ],
);
