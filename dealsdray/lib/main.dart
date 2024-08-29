import 'package:dealsdray/route/navigation_service.dart';
import 'package:dealsdray/route/routes.dart';
import 'package:dealsdray/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Deals Dray',
      scaffoldMessengerKey: NavigationService.scaffoldMessengerKey,
      theme: Themes.lightTheme(),
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
    );
  }
}
