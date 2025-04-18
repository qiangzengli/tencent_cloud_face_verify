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
              onPressed: () async {
                final Map<String, String> a = {"orderNo":"orderNum0000000001","appId":"TIDAuFAT","sign":"39299F4E10C61481A30CE4B7E257BE1467DA72C7","faceId":"tx011818046f90367f8413489ebfe270","version":"1.0.0","nonce":"pok0utbgOyTY5k71bI1DUk1DnHuSGOvD","userId":"userId000000000001"};
                final Map<Object?, Object?> result =
                    await tencentCloudFaceVerify.launchVerify(
                  userId: a["userId"] ?? "",
                  sign: a["sign"] ?? "",
                  appId: a["appId"] ?? "",
                  orderNo: a["orderNo"] ?? "",
                  apiVersion: a["version"] ?? "",
                  licence:
                      "Q5sBOcmVygfQJjdMcItosSpbz9ivBiY4RiMPpoogd9xpOjUQk9uqkxE/w9h8yTPR8pklsNZjOXT3ikedc9UEDNHKmP2qFVc8oFQotqOu5fCTC3iFTodmJ5TQ6Mh6hjqgD+rIXBQcztoQb8EpEQc0msh9oCpFVsMp1EcU+j4OcJwR0yFkqvU+aLnXQ7mhhWX2779bTejo59+V2SeM6xrE27gdrC7J4BCgu21vCIsiX/4VmMSJp0QkQzPDHK6EeMaLsZ2Hjn5u6r05YoTR/ROh8ie5E0B0vv3Qk9Sc0J8vgnkzdEW+HUtfR/1+twbHUcwWtoPZ+cM/h5ht3xC8bD4d5Q==",
                  faceId: a["faceId"] ?? "",
                  nonce: a["nonce"] ?? "",
                );
                print(result.toString());
              },
              child: Text("拉起实名认证")),
        ],
      ),
    );
  }
}
