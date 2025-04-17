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
              {"orderNo":"orderNum0000000001","appId":"TIDAuFAT","sign":"A7DD915D3CF7BB23D3A82C5E7552FC571A3762BE","faceId":"tx01d31f3eefd7f6aa081efc1ebfe270","version":"1.0.0","nonce":"ekrNGPs9rSEIxXYxaWwPjM3qLfK8Ua0f","userId":"userId000000000001"};
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
