import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/registration/dob_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../Constants/colors.dart';
import '../../Widgets/textfield_label.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({Key? key}) : super(key: key);

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height / 40,
              ),
              Center(
                  child: SvgPicture.asset(
                'assets/images/img3.svg',
                height: height / 3,
              )),
              SizedBox(
                height: height / 30,
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
              TextLabel(labelText: "First Name"),
              SizedBox(
                height: height / 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Container(
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: GoogleFonts.ptSerifCaption(
                      fontSize: 14,
                    ),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 8),
                        hintText: "Eg. Alex",
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
                height: height / 50,
              ),
              TextLabel(labelText: "Last Name"),
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
                        hintText: "Eg. Volkov",
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
                height: height / 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DobScreen(),
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
                              text: "S",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                          TextSpan(
                              text: "UBMIT",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
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
