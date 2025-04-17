import Flutter
import UIKit

public class TencentCloudFaceVerifyPlugin: NSObject, FlutterPlugin, WBFaceVerifyCustomerServiceDelegate {
  private var flutterResult: FlutterResult?
  
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "tencent_cloud_face_verify", binaryMessenger: registrar.messenger())
    let instance = TencentCloudFaceVerifyPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "launchVerify":
      self.flutterResult = result
      if let dict = call.arguments as? Dictionary<String, String?> {
        let userId:String = dict["userId"] as? String ?? ""
        let sign:String = dict["sign"] as? String ?? ""
        let appId:String = dict["appId"] as? String ?? ""
        let orderNo:String = dict["orderNo"] as? String ?? ""
        let apiVersion:String = dict["apiVersion"] as? String ?? ""
        let licence:String = dict["licence"] as? String ?? ""
        let faceId:String = dict["faceId"] as? String ?? ""
        let nonce:String = dict["nonce"] as? String ?? ""
        let config = WBFaceVerifySDKConfig()
        config.theme = WBFaceVerifyTheme.lightness
        config.language = WBFaceVerifyLanguage.ZH_CN
       
        // 设置 bundlePath
        if let bundlePath = Bundle(for: TencentCloudFaceVerifyPlugin.self).path(forResource: "TencentCloudHuiyanSDKFace", ofType: "bundle") {
            config.bundlePath = (bundlePath as NSString).deletingLastPathComponent
            print("Successfully set bundlePath: \(config.bundlePath)")
        }

        // 设置代理
        WBFaceVerifyCustomerService.sharedInstance().delegate = self
    
        WBFaceVerifyCustomerService.sharedInstance().initSDK(withUserId: userId, nonce: nonce, sign: sign, appid: appId, orderNo: orderNo, apiVersion: apiVersion, licence: licence, faceId: faceId,sdkConfig: config) {
            DispatchQueue.main.async {
                WBFaceVerifyCustomerService.sharedInstance().startWbFaceVeirifySdk()
            }
        } failure: { error in
//            print("SDK initialization failed: \(error.domain), code: \(error.code), description: \(error.localizedDescription)")
//            self.flutterResult?(FlutterError(code: String(error.code),
//                                           message: error.localizedDescription,
//                                           details: error.domain))
        }
      }
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  // MARK: - WBFaceVerifyCustomerServiceDelegate Methods
  public func wbfaceVerifyCustomerServiceDidFinished(with result: WBFaceVerifyResult) {
    // 人脸验证完成的回调
    if result.isSuccess {
        // 验证成功
        let resultDict: [String: Any] = [
            "success": true,
            "orderNo": result.orderNo ?? "",
            "sign": result.sign ?? "",
            "isSuccess": result.isSuccess
        ]
        self.flutterResult?(resultDict)
    } else {
        // 验证失败
        let resultDict: [String: Any] = [
            "success": false,
            "orderNo": result.orderNo ?? "",
            "sign": result.sign ?? "",
            "isSuccess": result.isSuccess
        ]
        self.flutterResult?(resultDict)
    }
  }

//  // 可选：添加即将上传最佳照片的回调
//  public func wbfaceVerifyCustomerServiceWillUploadBestImage(_ bestImage: UIImage) {
//    print("Will upload best image")
//  }
}
