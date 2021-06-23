import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qrcode_scanner/flutter_qrcode_scanner.dart';
import 'package:get/get.dart';

class QrCodeScreen extends StatelessWidget {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        QRView(
          key: qrKey,
          onQRViewCreated: (controller) {},
          overlay: QrScannerOverlayShape(
            borderColor: Colors.white,
            borderRadius: 1,
            borderLength: 30,
            borderWidth: 5,
            cutOutSize: 300,
          ),
        ),
        Column(
          children: [
            SizedBox(height: 100,),
            Center(
              child: Text("Scan QR Code", style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ButtonBottomBack(
                    onTap: (){
                      Get.back();
                      },
                  )),
            ),
          ],
        )
      ],
    ));
  }
}
