import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "N",
                        style: GoogleFonts.montserrat(
                            fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
                    TextSpan(
                        text: "OTIFICATION",
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
                  ])),
                ),
                SizedBox(
                  height: 30,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.maxFinite,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset('assets/images/notiIcon.svg', fit: BoxFit.contain),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sagittis metus ut urna dapibus',
                                    style: GoogleFonts.inter(
                                      color: Color(0xFF1C1C1C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '12 hours ago',
                                    style: GoogleFonts.inter(
                                      color: Colors.black.withOpacity(0.4),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
