import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Constants/colors.dart';
import 'package:flutter_postpe_demo/Screens/qrcode_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white10,
          leading: BackButton(
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  CupertinoIcons.ellipsis_vertical,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Text("Alex Volkov",
                    style: GoogleFonts.montserrat(
                        fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
                SizedBox(
                  height: height / 50,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                    style: GoogleFonts.ptSerifCaption(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 0.4))),
                SizedBox(
                  height: height / 20,
                ),
                Stack(alignment: Alignment.center, children: [
                  SvgPicture.asset('assets/images/QRcode.svg'),
                  Container(
                    height: 200,
                    width: 200,
                    child: QRView(
                      key: qrKey,
                      onQRViewCreated: _onQRViewCreated,
                      cameraFacing: CameraFacing.back,
                    ),
                  ),
                ]),
                SizedBox(
                  height: height / 40,
                ),
                Text("Scan this code to pay",
                    style: GoogleFonts.ptSerifCaption(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 1))),
                SizedBox(
                  height: height / 14,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => QRCodeScreen(),
                      //     ));
                    },
                    child: Container(
                        width: 200,
                        height: 45,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: mixPurpleColor,
                            transform: GradientRotation(314 * 3.14 / 180),
                          ),
                        ),
                        child: Center(
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "MY QR",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            TextSpan(
                                text: " C",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            TextSpan(
                                text: "ODE",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ])),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;

    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }
}
