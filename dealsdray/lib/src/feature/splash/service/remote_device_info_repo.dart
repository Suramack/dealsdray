import 'dart:convert';

import 'package:dealsdray/core/model/base_dynamic_response/base_dynamic_response.dart';
import 'package:dealsdray/core/model/device_info/request_model/add_device_info_request_model.dart';
import 'package:dealsdray/core/model/device_info/response_model/add_device_response_model/add_device_response_model.dart';
import 'package:dealsdray/core/network/end_point.dart';
import 'package:dealsdray/core/network/network.dart';
import 'package:dealsdray/src/feature/splash/service/device_info_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeviceInfoRemoteRepo implements DeviceInfoRepo {
  @override
  Future<BaseDynamicResponse> addDevice(
      {AddDeviceRequestModel? addDeviceRequestModel}) async {
    var response = await NetworkClient.post(
      endPoint: '${EndPoint.user}/${EndPoint.device}/${EndPoint.add}',
      body: json.encode(addDeviceRequestModel),
    );
    var result = response?.body;

    if (result != null) {
      // Convert result to a Map<String, dynamic>
      final jsonMap = jsonDecode(result); 

      return BaseDynamicResponse<DeviceResponseData>.fromJson(
        jsonMap,
        (data) => DeviceResponseData.fromJson(data as Map<String, dynamic>),
      );
    } else {
      // Handle the case where response is null
      throw Exception('Response is null');
    }
  }
}

final deviceInfoRemoteProvider =
    Provider<DeviceInfoRemoteRepo>((ref) => DeviceInfoRemoteRepo());
