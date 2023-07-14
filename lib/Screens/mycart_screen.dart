// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'package:flutter_postpe_demo/Screens/pay_screen.dart';

import '../Constants/colors.dart';
import '../Widgets/notification_widget.dart';

class MycartScreen extends StatefulWidget {
  int index;
  MycartScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<MycartScreen> createState() => _MycartScreenState();
}

class _MycartScreenState extends State<MycartScreen> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "My Cart",
                      style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                    Spacer(),
                    // badges.Badge(
                    //   badgeContent: Text(
                    //     "2",
                    //     style: TextStyle(color: Colors.white),
                    //   ),
                    //   // showBadge: false,
                    //   position: badges.BadgePosition.custom(end: 2, bottom: 8),
                    //   badgeStyle: badges.BadgeStyle(
                    //       badgeGradient: badges.BadgeGradient.linear(colors: mixPurpleColor)),
                    //   child: Icon(
                    //     Iconsax.shopping_bag,
                    //     size: 30,
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 4,
                    // ),
                    NotificationWidget(
                      count: 1,
                      badge: true,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: Image.network(
                                  'https://www.nicepng.com/png/detail/978-9785226_coca-cola-can-transparent-coca-cola.png'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Coca-Cola Classic",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text("Forem ipsum dolor sit amet",
                                    style: GoogleFonts.ptSerifCaption(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black.withOpacity(0.5))),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$230",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    // Spacer(),
                                    SizedBox(
                                      width: width / 3,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (count > 1) {
                                            count--;
                                          }
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              colors: mixPurpleColor,
                                            )),
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(count.toString(),
                                        style: GoogleFonts.ptSerifCaption(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          count++;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              colors: mixPurpleColor,
                                            )),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: widget.index),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: width / 1.8,
                      child: TextFormField(
                        autofocus: false,
                        style: GoogleFonts.ptSerifCaption(fontSize: 14),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 8),
                            hintText: "Promo Code",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: purpleColor,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: purpleColor,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: purpleColor,
                                ))),
                      ),
                    ),
                    SizedBox(
                      width: width / 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => VerifyEmail(),
                        //     ));
                      },
                      child: Container(
                          width: width / 3,
                          height: 40,
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
                                  text: "A",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                              TextSpan(
                                  text: "PPLY",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ])),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Sub-total',
                            style: GoogleFonts.inter(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '\$230',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'Voucher',
                            style: GoogleFonts.inter(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '\$30',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'Delivery Fee',
                            style: GoogleFonts.inter(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '\$10',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        color: Color(0xFFD9D9D9),
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Total',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '\$270',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PayScreen(),
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
                                    text: "AYMENT",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                              ])),
                            )),
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
