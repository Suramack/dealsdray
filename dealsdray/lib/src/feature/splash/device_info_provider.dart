// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:dealsdray/core/model/device_info/request_model/add_device_info_request_model.dart';
import 'package:dealsdray/core/model/device_info/response_model/add_device_response_model/add_device_response_model.dart';
import 'package:dealsdray/design_system/dialog/brand_dialog.dart';
import 'package:dealsdray/design_system/label/label.dart';
import 'package:dealsdray/src/feature/splash/service/remote_device_info_repo.dart';
import 'package:dealsdray/util/enum/network_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:network_info_plus/network_info_plus.dart';
import '../../../core/model/device_info/state_model/device_info_state_model.dart';

final deviceInfoProvider =
    StateNotifierProvider<DeviceInfoNotifier, DeviceInfoState>(
  (ref) => DeviceInfoNotifier(ref),
);

class DeviceInfoNotifier extends StateNotifier<DeviceInfoState> {
  DeviceInfoNotifier(this.ref) : super(const DeviceInfoState());

  final Ref ref;

  String? get deviceId=>state.deviceId;



  Location location = Location();

  Future<void> getLocationInfo() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationData = await location.getLocation();
    updateLocation(locationData);
  }

  Future<bool> getDeviceInfo({required BuildContext context}) async {
    await getLocationInfo();
    final networkInfo = NetworkInfo();
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    String? deviceIpAddress = await networkInfo.getWifiIP();
    var response = await ref.read(deviceInfoRemoteProvider).addDevice(
            addDeviceRequestModel: AddDeviceRequestModel(
          deviceId: androidInfo.id,
          deviceType: Platform.isAndroid ? 'Android' : '',
          deviceIpAddress: deviceIpAddress,
          deviceName: androidInfo.device,
          deviceOsVersion: androidInfo.type,
          lat: state.lat,
          long: state.lon,
        ));

    if (response.status == ActionStatus.success.code) {
      updateDeviceId(deviceId: (response.data as DeviceResponseData).deviceId);
      return true;
    } else {
      BrandDialog.showDialogs(
        context: context,
        message: Strings.somethingWentWrong,
      );
      return false;
    }
  }

  void updateLocation(LocationData data) {
    state = state.copyWith(
      lat: data.latitude,
      lon: data.longitude,
    );
  }

  void updateDeviceId({String? deviceId}) {
    state = state.copyWith(deviceId: deviceId);
  }
}
