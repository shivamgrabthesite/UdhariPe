import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'package:badges/badges.dart' as badges;
import '../Constants/colors.dart';
import '../Widgets/notification_widget.dart';
import '../Widgets/textfield_label.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Row(
                  children: [
                    BackButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.black,
                    ),
                    Spacer(),
                    NotificationWidget(
                      count: 1,
                      badge: true,
                    )
                  ],
                ),
              ),
              Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "A",
                      style: GoogleFonts.montserrat(
                          fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black)),
                  TextSpan(
                      text: "CCOUNT",
                      style: GoogleFonts.montserrat(
                          fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
                ])),
              ),
              SizedBox(
                height: height / 40,
              ),
              Stack(alignment: Alignment.center, children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  radius: 50,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.2))),
                    child: SvgPicture.asset(
                      'assets/images/edit.svg',
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: height / 40,
              ),
              Center(
                child: Text("Alex Volov".toUpperCase(),
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black)),
              ),
              Center(
                child: Text("+91-9865745321",
                    style: GoogleFonts.ptSerifCaption(
                        fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black)),
              ),
              SizedBox(
                height: height / 26,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextLabel(labelText: "Phone Number"),
                  SizedBox(
                    height: height / 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
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
                    height: height / 80,
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
                  TextLabel(labelText: "Date of Birth"),
                  SizedBox(
                    height: height / 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.datetime,
                        style: GoogleFonts.ptSerifCaption(fontSize: 14),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 8),
                            hintText: "12/03/2002",
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
                  TextLabel(labelText: "KYC verification"),
                  SizedBox(
                    height: height / 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        style: GoogleFonts.ptSerifCaption(fontSize: 14),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 8),
                            hintText: "Completed",
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
                  TextLabel(labelText: "Address"),
                  SizedBox(
                    height: height / 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Container(
                      height: 80,
                      child: TextFormField(
                        style: GoogleFonts.ptSerifCaption(fontSize: 14),
                        cursorColor: Colors.black,
                        minLines: 1,
                        maxLines: 3,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            hintText:
                                "417-419, Midas Shahar Plaza Cplx, Mathuradas Vasanji Road, Andheri (west) Mumbai, Maharashtra, 400059",
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
                ],
              ),
              SizedBox(
                height: height / 60,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: width / 1.8,
                      height: height / 16,
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
                              text: "AVE",
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
