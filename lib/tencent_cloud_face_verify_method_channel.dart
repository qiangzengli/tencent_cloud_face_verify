import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'tencent_cloud_face_verify_platform_interface.dart';

/// An implementation of [TencentCloudFaceVerifyPlatform] that uses method channels.
class MethodChannelTencentCloudFaceVerify
    extends TencentCloudFaceVerifyPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('tencent_cloud_face_verify');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<Map<Object?, Object?>> launchVerify({
    required String userId,
    required String sign,
    required String appId,
    required String orderNo,
    required String apiVersion,
    required String licence,
    required String faceId,
    required String nonce,
  }) async {
    return await methodChannel.invokeMethod('launchVerify', {
      "userId": userId,
      "sign": sign,
      "appId": appId,
      "orderNo": orderNo,
      "apiVersion": apiVersion,
      "licence": licence,
      "faceId": faceId,
      "nonce": nonce,
    });
  }
}
