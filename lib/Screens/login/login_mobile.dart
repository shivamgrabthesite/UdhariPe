import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/login/login_otp.dart';
import 'package:flutter_postpe_demo/Screens/registration/verify_mobile_number.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../Constants/colors.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({Key? key}) : super(key: key);

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  bool isCkecked = false;
  bool isEmail = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return SafeArea(
      // minimum: EdgeInsets.only(right: 14),
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
                      "Login",
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
              // Padding(
              //     padding: const EdgeInsets.only(left: 14),
              //     child: RichText(
              //         text: TextSpan(children: [
              //       TextSpan(
              //           text: "E",
              //           style: GoogleFonts.montserrat(
              //               fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
              //       TextSpan(
              //           text: "NTER MOBILE NUMBER",
              //           style: GoogleFonts.montserrat(
              //               fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
              //     ]))),
              // Padding(
              //   padding: const EdgeInsets.only(left: 14),
              //   child: Text("An OTP will be sent for Verification",
              //       style: GoogleFonts.ptSerifCaption(
              //           fontWeight: FontWeight.w400,
              //           fontSize: 12,
              //           color: Color.fromRGBO(0, 0, 0, 0.4))),
              // ),
              // SizedBox(
              //   height: height / 100,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isEmail = true;
                      });
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          border: isEmail == false ? Border.all(color: Colors.black) : null,
                          gradient:
                              isEmail == true ? LinearGradient(colors: mixPurpleColor) : null),
                      child: Center(
                        child: Text(
                          "Email",
                          style: TextStyle(
                            color: isEmail == true ? Colors.white : Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isEmail = false;
                      });
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          border: isEmail == true ? Border.all(color: Colors.black) : null,
                          gradient:
                              isEmail == false ? LinearGradient(colors: mixPurpleColor) : null),
                      child: Center(
                        child: Text(
                          "Phone",
                          style: TextStyle(
                            color: isEmail == false ? Colors.white : Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              isEmail == false
                  ? Padding(
                      padding: const EdgeInsets.all(14),
                      child: Container(
                        height: 50,
                        child: TextFormField(
                          onTapOutside: (event) {
                            setState(() {
                              FocusScope.of(context).unfocus();
                            });
                          },
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.ptSerifCaption(fontSize: 14),
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 8),
                              hintText: "Enter Your Mobile Number",
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.black, width: 1.4)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.black, width: 1.4)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.black, width: 1.4))),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(14),
                      child: Container(
                        height: 50,
                        child: TextFormField(
                          style: GoogleFonts.ptSerifCaption(fontSize: 14),
                          onTapOutside: (event) {
                            setState(() {
                              FocusScope.of(context).unfocus();
                            });
                          },
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 8),
                              hintText: "Enter Your Email Id",
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.black, width: 1.4)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.black, width: 1.4)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(color: Colors.black, width: 1.4))),
                        ),
                      ),
                    ),
              SizedBox(
                height: height / 38,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginOtp(),
                        ));
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
                              text: "S",
                              style: GoogleFonts.montserrat(
                                  fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white)),
                          TextSpan(
                              text: "ENT ",
                              style: GoogleFonts.montserrat(
                                  fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white)),
                          TextSpan(
                              text: "OTP",
                              style: GoogleFonts.montserrat(
                                  fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white)),
                        ])),
                      )),
                ),
              ),
              SizedBox(
                height: height / 38,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerifyMobile(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
