import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/registration/verify_mobile_number.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../Constants/colors.dart';

class GrantScreen extends StatefulWidget {
  const GrantScreen({Key? key}) : super(key: key);

  @override
  State<GrantScreen> createState() => _GrantScreenState();
}

class _GrantScreenState extends State<GrantScreen> {
  bool isCkecked = false;
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: GradientText(
                      "Grant Us",
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
                child: Text("The Following Permissions To Unlock The Full Potential Of Our App.",
                    style: GoogleFonts.ptSerifCaption(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 0.6))),
              ),
              SizedBox(
                height: height / 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/Vector.svg'),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "P",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                                TextSpan(
                                    text: "HONE STATE PERMISSION",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                              ])),
                              SizedBox(
                                height: height / 100,
                              ),
                              Text(
                                  "Granting us permission to verify your phone number ensures the security of your account and protects your financial information. Your information is kept secure, and we take your privacy seriously.",
                                  style: GoogleFonts.ptSerifCaption(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: height / 40,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/sms.svg'),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "SMS",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                                TextSpan(
                                    text: " STATE PERMISSION",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                              ])),
                              SizedBox(
                                height: height / 100,
                              ),
                              Text(
                                  "Granting us permission to verify your phone number ensures the security of your account and protects your financial information. Your information is kept secure, and we take your privacy seriously.",
                                  style: GoogleFonts.ptSerifCaption(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: height / 40,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/location.svg'),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "L",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                                TextSpan(
                                    text: "OCATION STATE PERMISSION",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                              ])),
                              SizedBox(
                                height: height / 100,
                              ),
                              Text(
                                  "Granting us permission to verify your phone number ensures the security of your account and protects your financial information. Your information is kept secure, and we take your privacy seriously.",
                                  style: GoogleFonts.ptSerifCaption(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: height / 40,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/camera.svg'),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "C",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                                TextSpan(
                                    text: "AMERA STATE PERMISSION",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                              ])),
                              SizedBox(
                                height: height / 100,
                              ),
                              Text(
                                  "Granting us permission to verify your phone number ensures the security of your account and protects your financial information. Your information is kept secure, and we take your privacy seriously.",
                                  style: GoogleFonts.ptSerifCaption(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: height / 40,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/directnotification.svg'),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "F",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                                TextSpan(
                                    text: "ILES & ",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                                TextSpan(
                                    text: "M",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                                TextSpan(
                                    text: "EDIA PERMISSION",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black)),
                              ])),
                              SizedBox(
                                height: height / 100,
                              ),
                              Text(
                                  "Granting us permission to verify your phone number ensures the security of your account and protects your financial information. Your information is kept secure, and we take your privacy seriously.",
                                  style: GoogleFonts.ptSerifCaption(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: height / 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Checkbox(
                      visualDensity: VisualDensity.compact,
                      fillColor: MaterialStateProperty.all(Colors.black),
                      checkColor: Colors.white,
                      side: BorderSide(color: Colors.black, width: 1.4),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      value: isCkecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          if (isCkecked == true) {
                            isCkecked = false;
                          } else {
                            isCkecked = true;
                          }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                          "I agree to terms- privacy policy and allow access to my credit bureau information",
                          style: GoogleFonts.ptSerifCaption(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: isCkecked == false
                                  ? Color.fromRGBO(0, 0, 0, 0.4)
                                  : Color.fromRGBO(0, 0, 0, 1))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    if (isCkecked == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerifyMobile(),
                          ));
                    } else {}
                  },
                  child: Container(
                      width: 260,
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
                              text: "G",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                          TextSpan(
                              text: "RANT THE ",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                          TextSpan(
                              text: "P",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                          TextSpan(
                              text: "ERMISSION",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                        ])),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
