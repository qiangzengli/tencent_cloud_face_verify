import Flutter
import UIKit

public class TencentCloudFaceVerifyPlugin: NSObject, FlutterPlugin {
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
       
//            config.bundlePath="Framework/TencentCloudHuiyanSDKFace_framework/Resources/"
    
            WBFaceVerifyCustomerService.sharedInstance().initSDK(withUserId: userId, nonce: nonce, sign: sign, appid: appId, orderNo: orderNo, apiVersion: apiVersion, licence: licence, faceId: faceId,sdkConfig: config) {
                
                WBFaceVerifyCustomerService.sharedInstance().startWbFaceVeirifySdk()
                
            } failure: { WBFaceError in
                
                
                
            }

            
        }
        
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
