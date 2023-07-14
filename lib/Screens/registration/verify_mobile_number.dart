import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/login/login_mobile.dart';
import 'package:flutter_postpe_demo/Screens/registration/otp_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../Constants/colors.dart';

class VerifyMobile extends StatefulWidget {
  const VerifyMobile({Key? key}) : super(key: key);

  @override
  State<VerifyMobile> createState() => _VerifyMobileState();
}

class _VerifyMobileState extends State<VerifyMobile> {
  TextEditingController mobileController = TextEditingController();
  var key = GlobalKey<FormState>();
  bool isCkecked = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    void validateMobile() async {
      if (mobileController.text.length == 10) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtpScreen(),
            ));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("enter exact 10 digits")));
      }
    }

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
              Center(child: SvgPicture.asset('assets/images/img2.svg', fit: BoxFit.contain)),
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
                height: height / 100,
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  height: 50,
                  child: Form(
                    key: key,
                    child: TextFormField(
                      controller: mobileController,
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
                            borderSide: BorderSide(color: Colors.black, width: 1.4)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.red, width: 1.4)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 80,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          "you agree to allow application to check your credit information with RBI approved credit bureaus.we need to check if you are a credit card holder and are above our accepted credit score threshold. it will not impact your credit score.",
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
                height: height / 38,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // validateMobile();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpScreen(),
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
                              text: "V",
                              style: GoogleFonts.montserrat(
                                  fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white)),
                          TextSpan(
                              text: "ERIFY MOBILE NUMBER",
                              style: GoogleFonts.montserrat(
                                  fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white)),
                        ])),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginMobile(),
                        )),
                    child: Text(
                      "Login",
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
