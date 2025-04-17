
import 'tencent_cloud_face_verify_platform_interface.dart';

class TencentCloudFaceVerify {
  Future<String?> getPlatformVersion() {
    return TencentCloudFaceVerifyPlatform.instance.getPlatformVersion();
  }
  Future<void> launchVerify({
    required String userId,
    required String sign,
    required String appId,
    required String orderNo,
    required String apiVersion,
    required String licence,
    required String faceId,
    required String nonce,
  }) {
    return TencentCloudFaceVerifyPlatform.instance.launchVerify
      (
      userId: userId,
      sign: sign,
      appId: appId,
      orderNo: orderNo,
      apiVersion: apiVersion,
      licence: licence,
      faceId: faceId,
      nonce: nonce,

    );
  }

}
