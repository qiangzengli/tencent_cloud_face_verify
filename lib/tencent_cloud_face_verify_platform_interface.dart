import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'tencent_cloud_face_verify_method_channel.dart';

abstract class TencentCloudFaceVerifyPlatform extends PlatformInterface {
  /// Constructs a TencentCloudFaceVerifyPlatform.
  TencentCloudFaceVerifyPlatform() : super(token: _token);

  static final Object _token = Object();

  static TencentCloudFaceVerifyPlatform _instance = MethodChannelTencentCloudFaceVerify();

  /// The default instance of [TencentCloudFaceVerifyPlatform] to use.
  ///
  /// Defaults to [MethodChannelTencentCloudFaceVerify].
  static TencentCloudFaceVerifyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TencentCloudFaceVerifyPlatform] when
  /// they register themselves.
  static set instance(TencentCloudFaceVerifyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
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
  }){
    throw UnimplementedError('launchVerify() has not been implemented.');

  }
}
