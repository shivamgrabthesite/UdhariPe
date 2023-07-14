import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/product_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constants/colors.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: SvgPicture.asset(
            'assets/images/nocart.svg',
            fit: BoxFit.contain,
          )),
          SizedBox(
            height: 30,
          ),
          Text(
            "You're cart is empty",
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 260,
            child: Text(
              "Looks like you haven't added anything to your cart yet",
              textAlign: TextAlign.center,
              style: GoogleFonts.ptSerifCaption(
                color: Colors.black.withOpacity(0.6),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductScreen(),
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
                        text: "TART ",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                    TextSpan(
                        text: "S",
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                    TextSpan(
                        text: "HOPPING",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                  ])),
                )),
          ),
        ],
      ),
    );
  }
}
