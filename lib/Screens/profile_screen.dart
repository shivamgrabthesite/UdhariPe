import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/account_screen.dart';
import 'package:flutter_postpe_demo/Screens/qrcode_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../Constants/colors.dart';
import 'package:badges/badges.dart' as badges;

import '../Widgets/notification_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "P",
                          style: GoogleFonts.montserrat(
                              fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black)),
                      TextSpan(
                          text: "ROFILE",
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
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QRCodeScreen(),
                      )),
                  child: Stack(alignment: Alignment.center, children: [
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
                        child: Icon(Iconsax.scan),
                      ),
                    ),
                  ]),
                ),
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountScreen(),
                        ));
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/usertick.svg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text("Account",
                            style: GoogleFonts.ptSerifCaption(
                                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                ),
                SizedBox(
                  height: height / 60,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/wallet.svg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text("Charges",
                            style: GoogleFonts.ptSerifCaption(
                                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                ),
                SizedBox(
                  height: height / 60,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/callcalling.svg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text("Contact us",
                            style: GoogleFonts.ptSerifCaption(
                                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                ),
                SizedBox(
                  height: height / 60,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/information.svg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text("About us",
                            style: GoogleFonts.ptSerifCaption(
                                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                ),
                SizedBox(
                  height: height / 60,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/documentcopy.svg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text("Terms & Condition",
                            style: GoogleFonts.ptSerifCaption(
                                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                ),
                SizedBox(
                  height: height / 60,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/useroctagon.svg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text("Privacy Policy",
                            style: GoogleFonts.ptSerifCaption(
                                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                ),
                SizedBox(
                  height: height / 60,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/exportcurve.svg',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text("Log out",
                            style: GoogleFonts.ptSerifCaption(
                                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
