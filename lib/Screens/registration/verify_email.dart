import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/registration/name_screen.dart';
import 'package:flutter_postpe_demo/Widgets/textfield_label.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../Constants/colors.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
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
                        text: "ERIFY YOUR EMAIL",
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
                  ]))),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text("Only important updates only, we Promised",
                    style: GoogleFonts.ptSerifCaption(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 0.4))),
              ),
              SizedBox(
                height: height / 60,
              ),
              TextLabel(labelText: "Email ID"),
              SizedBox(
                height: height / 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Container(
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: GoogleFonts.ptSerifCaption(fontSize: 14),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 8),
                        hintText: "Eg. alex@gmail.com",
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
                height: height / 80,
              ),
              Center(
                child: Text(
                  'OR Continue with',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.ptSerifCaption(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: height / 40,
              ),
              Center(
                  child: Container(
                      width: width / 1.1,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                          child: Row(
                            children: [
                              Image.network('http://pngimg.com/uploads/google/google_PNG19635.png',
                                  fit: BoxFit.cover),
                              Padding(
                                padding: const EdgeInsets.only(left: 14),
                                child: Text("Continue With Google",
                                    style: GoogleFonts.ptSerifCaption(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color.fromRGBO(0, 0, 0, 1))),
                              ),
                            ],
                          )))),
              SizedBox(
                height: height / 30,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NameScreen(),
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
                              text: "E",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                          TextSpan(
                              text: "MAIL",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                        ])),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
