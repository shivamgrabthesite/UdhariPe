import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';
import 'package:flutter_postpe_demo/Constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white10,
          leading: BackButton(
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.ellipsis_vertical,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "S",
                      style: GoogleFonts.montserrat(
                          fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black)),
                  TextSpan(
                      text: "END ",
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
                SizedBox(
                  height: height / 60,
                ),
                Center(
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                      style: GoogleFonts.ptSerifCaption(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(0, 0, 0, 0.5))),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "T",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "O ",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "Y",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "OUR ",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "B",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "ANK ",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "A",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "CCOUNT",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                    ])),
                  ],
                ),
                SizedBox(
                  height: height / 80,
                ),
                CreditCardWidget(
                  cardNumber: "1234567890987654",
                  obscureCardNumber: true,
                  textStyle: GoogleFonts.montserrat(
                      fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
                  expiryDate: "15 Aug 2026",
                  cardHolderName: "shivam patel",
                  isHolderNameVisible: true,
                  obscureInitialCardNumber: true,
                  glassmorphismConfig: Glassmorphism(
                      blurX: 0, blurY: 0, gradient: LinearGradient(colors: mixPurpleColor)),
                  isChipVisible: false,
                  cvvCode: "cvvCode",
                  showBackView: false,
                  cardType: CardType.visa,
                  onCreditCardWidgetChange: (p0) {},
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
                  height: height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "S",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "ELECT ",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "A",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "NOTHER ",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "A",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                      TextSpan(
                          text: "CCOUNT",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black)),
                    ])),
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
                  ],
                ),
                SizedBox(
                  height: height / 40,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
