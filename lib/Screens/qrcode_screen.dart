import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/scanner_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:badges/badges.dart' as badges;
import '../Constants/colors.dart';
import '../Widgets/notification_widget.dart';

class QRCodeScreen extends StatefulWidget {
  const QRCodeScreen({Key? key}) : super(key: key);

  @override
  State<QRCodeScreen> createState() => _QRCodeScreenState();
}

class _QRCodeScreenState extends State<QRCodeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Q",
                          style: GoogleFonts.montserrat(
                              fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black)),
                      TextSpan(
                          text: "RCODE",
                          style: GoogleFonts.montserrat(
                              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
                    ])),
                    Spacer(),
                    NotificationWidget(
                      count: 1,
                      badge: true,
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
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
                  PrettyQr(
                    size: 190,
                    data: 'Developed by Savaliya Shivam',
                    roundEdges: false,
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
                // SizedBox(
                //   height: height / 14,
                // ),
                // Center(
                //   child: GestureDetector(
                //     onTap: () {
                //       // Navigator.push(
                //       //     context,
                //       //     MaterialPageRoute(
                //       //       builder: (context) => ScannerScreen(),
                //       //     ));
                //     },
                //     child: Container(
                //         width: 200,
                //         height: 45,
                //         padding: const EdgeInsets.all(8),
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(5),
                //           gradient: const LinearGradient(
                //             begin: Alignment.topLeft,
                //             end: Alignment.bottomRight,
                //             colors: mixPurpleColor,
                //             transform: GradientRotation(314 * 3.14 / 180),
                //           ),
                //         ),
                //         child: Center(
                //           child: RichText(
                //               text: TextSpan(children: [
                //             TextSpan(
                //                 text: "O",
                //                 style: GoogleFonts.montserrat(
                //                     fontSize: 18,
                //                     fontWeight: FontWeight.w600,
                //                     color: Colors.white)),
                //             TextSpan(
                //                 text: "PEN ",
                //                 style: GoogleFonts.montserrat(
                //                     fontSize: 16,
                //                     fontWeight: FontWeight.w600,
                //                     color: Colors.white)),
                //             TextSpan(
                //                 text: "S",
                //                 style: GoogleFonts.montserrat(
                //                     fontSize: 18,
                //                     fontWeight: FontWeight.w600,
                //                     color: Colors.white)),
                //             TextSpan(
                //                 text: "CANNER",
                //                 style: GoogleFonts.montserrat(
                //                     fontSize: 16,
                //                     fontWeight: FontWeight.w600,
                //                     color: Colors.white)),
                //           ])),
                //         )),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
