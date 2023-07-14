import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_postpe_demo/Screens/registration/verify_email.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../Constants/colors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height / 40,
              ),
              Center(
                  child: SvgPicture.asset('assets/images/img2.svg',
                      height: height / 3, fit: BoxFit.contain)),
              SizedBox(
                height: height / 60,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: GradientText(
                      "Fill This",
                      colors: mixPurpleColor,
                      style: GoogleFonts.outfit(fontSize: 44, fontWeight: FontWeight.w500),
                      // style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(),
                  Stack(children: [SvgPicture.asset('assets/images/img1.svg')])
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text("Apply this details that linked to your bank account",
                    style: GoogleFonts.ptSerifCaption(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.5,
                        color: Color.fromRGBO(0, 0, 0, 0.6))),
              ),
              SizedBox(
                height: height / 30,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "V",
                        style: GoogleFonts.montserrat(
                            fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
                    TextSpan(
                        text: "ERIFY MOBILE NUMBER",
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
                  ]))),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text("An OTP will be sent for Verification",
                    style: GoogleFonts.ptSerifCaption(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 0.4))),
              ),
              SizedBox(
                height: height / 30,
              ),
              OtpTextField(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                numberOfFields: 4,
                fieldWidth: width / 5.6,
                borderWidth: 1.2,
                keyboardType: TextInputType.number,
                borderColor: Colors.black,
                enabledBorderColor: Colors.black,
                focusedBorderColor: Colors.black,
                showFieldAsBox: true,
                styles: [
                  GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 29, 80, 167),
                  ),
                  GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 29, 80, 167),
                  ),
                  GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 29, 80, 167),
                  ),
                  GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 29, 80, 167),
                  ),
                ],
                cursorColor: Colors.black,
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
              ),
              SizedBox(
                height: height / 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "R",
                            style: GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black)),
                        TextSpan(
                            text: "ESEND ",
                            style: GoogleFonts.montserrat(
                                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black)),
                        TextSpan(
                            text: "OTP",
                            style: GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black)),
                      ])),
                      Icon(Icons.arrow_forward),
                      Spacer(),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "The code will expire in ",
                            style: GoogleFonts.ptSerifCaption(
                                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black)),
                        TextSpan(
                            text: "04:12",
                            style: GoogleFonts.ptSerifCaption(
                                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.red)),
                      ]))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 15,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifyEmail(),
                        ));
                  },
                  child: Container(
                      width: 200,
                      height: 45,
                      padding: EdgeInsets.all(8),
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
                              text: "V",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                          TextSpan(
                              text: "ERIFY ",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                          TextSpan(
                              text: "OTP",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                        ])),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
