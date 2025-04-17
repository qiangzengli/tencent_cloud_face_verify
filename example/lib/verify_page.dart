import 'package:flutter/material.dart';

import 'package:tencent_cloud_face_verify/tencent_cloud_face_verify.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  final TencentCloudFaceVerify tencentCloudFaceVerify =
      TencentCloudFaceVerify();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("实名认证"),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {

              final Map<String,String> a =
              {"orderNo":"orderNum0000000001","appId":"TIDAuFAT","sign":"E97AD5AB74AEF6CFDA6FF4B32BC5F250EC5D5A95","faceId":"tx01d06e8316ce5e2bb1b9c61fbfe270","version":"1.0.0","nonce":"ichLf2L5d5WAnMTl1QUV8jVmtZMJSYJW","userId":"userId000000000001"};
              // {"orderNo":"orderNum0000000001","appId":"TIDAuFAT","sign":"EA5146F55B362675C90644582098ED0D2494310D","faceId":"tx015086aec0400482bb7eabacbfe270","version":"1.0.0","nonce":"ttqYBcLOVwGGFg4qs5ITvnfVyOwAmTaJ","userId":"userId000000000001"};
              // {"orderNo":"orderNum0000000001","appId":"TIDAuFAT","sign":"EA5146F55B362675C90644582098ED0D2494310D","faceId":"tx015086aec0400482bb7eabacbfe270","version":"1.0.0","nonce":"ttqYBcLOVwGGFg4qs5ITvnfVyOwAmTaJ","userId":"userId000000000001"};
              // {"orderNo":"orderNum0000000001","appId":"TIDAuFAT","sign":"02A4AB4DEFAF74A414F6DB9A1206879B70BEEC49","faceId":"tx01424e43d427b117f9628ba8bfe270","version":"1.0.0","nonce":"ibYFEcMNkhjZhNnE5KTpcOvlViaSo1cm","userId":"userId000000000001"};
                  tencentCloudFaceVerify.launchVerify(
                    userId: a["userId"]??"",
                    sign: a["sign"]??"",
                    appId: a["appId"]??"",
                    orderNo: a["orderNo"]??"",
                    apiVersion: a["version"]??"",
                    licence: "Q5sBOcmVygfQJjdMcItosSpbz9ivBiY4RiMPpoogd9xpOjUQk9uqkxE/w9h8yTPR8pklsNZjOXT3ikedc9UEDNHKmP2qFVc8oFQotqOu5fCTC3iFTodmJ5TQ6Mh6hjqgD+rIXBQcztoQb8EpEQc0msh9oCpFVsMp1EcU+j4OcJwR0yFkqvU+aLnXQ7mhhWX2779bTejo59+V2SeM6xrE27gdrC7J4BCgu21vCIsiX/4VmMSJp0QkQzPDHK6EeMaLsZ2Hjn5u6r05YoTR/ROh8ie5E0B0vv3Qk9Sc0J8vgnkzdEW+HUtfR/1+twbHUcwWtoPZ+cM/h5ht3xC8bD4d5Q==",
                    faceId: a["faceId"]??"",
                    nonce: a["nonce"]??"",
                  );

              },
              child: Text("拉起实名认证")),
        ],
      ),
    );
  }
}
