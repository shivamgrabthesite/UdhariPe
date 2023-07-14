import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/payment_successful.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'package:iconsax/iconsax.dart';
import '../Constants/colors.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    BackButton(),
                    Spacer(),
                    badges.Badge(
                      badgeContent: Text(
                        "5",
                        style: TextStyle(color: Colors.white),
                      ),
                      position: badges.BadgePosition.custom(end: 2, bottom: 8),
                      badgeStyle: badges.BadgeStyle(
                          badgeGradient: badges.BadgeGradient.linear(colors: mixPurpleColor)),
                      child: Icon(
                        Iconsax.notification,
                        size: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height / 20,
                ),
                Center(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "T",
                        style: GoogleFonts.montserrat(
                            fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black)),
                    TextSpan(
                        text: "RANSFER ",
                        style: GoogleFonts.montserrat(
                            fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
                    TextSpan(
                        text: "M",
                        style: GoogleFonts.montserrat(
                            fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black)),
                    TextSpan(
                        text: "ONEY",
                        style: GoogleFonts.montserrat(
                            fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
                  ])),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Text(
                  "Pay to",
                  style: GoogleFonts.ptSerifCaption(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: height / 100,
                ),
                Text("coca cola".toUpperCase(),
                    style: GoogleFonts.montserrat(
                        fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
                SizedBox(
                  height: height / 20,
                ),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 50,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.ptSerifCaption(fontSize: 28, color: Colors.black),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 10),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              "₹",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          hintText: "0",
                          hintStyle: GoogleFonts.ptSerifCaption(fontSize: 28, color: Colors.black),
                          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.4))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.4))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.4)))),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(
                      width: width / 100,
                    ),
                    Expanded(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                        style: GoogleFonts.ptSerifCaption(
                            fontSize: 10, color: Color.fromRGBO(0, 0, 0, 0.5)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height / 8,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentSuccessful(),
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
                                text: "P",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            TextSpan(
                                text: "AY ",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            TextSpan(
                                text: "N",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            TextSpan(
                                text: "OW",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ])),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
