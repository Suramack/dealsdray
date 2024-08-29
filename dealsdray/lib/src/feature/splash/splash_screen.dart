import 'package:dealsdray/design_system/label/label.dart';
import 'package:dealsdray/design_system/style/text_style.dart';
import 'package:dealsdray/design_system/widget/brand_text.dart';
import 'package:dealsdray/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    /// check logged in or not and Navigate
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      context.go(RouteName.otp);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: BrandText.primary(
              data: Strings.ok,
              textStyle: BrandTextStyle.brandTextStyle1,
            ),
          ),
        ],
      ),
    );
  }
}
