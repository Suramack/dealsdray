import 'package:dealsdray/design_system/loader/brand_loader.dart';
import 'package:dealsdray/route/route_name.dart';
import 'package:dealsdray/src/feature/splash/device_info_provider.dart';
import 'package:dealsdray/util/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  late DeviceInfoNotifier provider;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_)async {
   var response=await   provider.getDeviceInfo(context: context);
     if(response){
       fetchData();
     }
    });
  }

  Future<void> fetchData() async {
    /// check logged in or not and Navigate
    if (mounted) {
      context.go(RouteName.phoneNumber);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(deviceInfoProvider);
    provider = ref.read(deviceInfoProvider.notifier);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ClipOval(
                  child: Image.asset(
                    Assets.logo,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ],
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            child: BrandCircularProgressWidget(),
          )
        ],
      ),
    );
  }
}
