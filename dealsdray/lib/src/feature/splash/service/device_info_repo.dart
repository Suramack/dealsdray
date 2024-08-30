import 'package:dealsdray/core/model/device_info/request_model/add_device_info_request_model.dart';

abstract class DeviceInfoRepo {
  Future<void> addDevice({AddDeviceRequestModel? addDeviceRequestModel});
}
