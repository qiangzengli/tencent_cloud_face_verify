#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint tencent_cloud_face_verify.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'tencent_cloud_face_verify'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  #.framework文件路径
  s.vendored_frameworks = 'Framework/TencentCloudHuiyanSDKFace_framework/Libs/*framework'
  #.bundle资源文件路径
   s.ios.resource = 'Framework/TencentCloudHuiyanSDKFace_framework/Resources/*.bundle'
#   s.resource = ['Framework/TencentCloudHuiyanSDKFace_framework/Resources/*.bundle']
#   s.resource_bundles ='Framework/TencentCloudHuiyanSDKFace_framework/Resources/*.bundle'
# s.resource_bundles = {
#   'TencentCloudHuiyanSDKFace' => ['Framework/TencentCloudHuiyanSDKFace_framework/Resources/*bundle']
# }
  #swift _oc Header 桥接文件
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # 1. 添加所有腾讯云认证需要的系统 Framework
  s.frameworks = [
    'UIKit',
    'AVFoundation',
    'CoreVideo',
    'Security',
    'SystemConfiguration',
    'CoreMedia',
    'CoreTelephony',
    'ImageIO',
    'VideoToolbox',
    'Accelerate',
    'WebKit'  # 注意：WebKit.framework（不是 webkit.framework）
  ]
  # 2. 添加腾讯云认证需要的系统库（.tbd）
  s.libraries = 'c++', 'z'  # libc++.tbd 和 libz.tbd



  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'tencent_cloud_face_verify_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
