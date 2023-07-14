import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/colors.dart';

class EMIStatement extends StatefulWidget {
  const EMIStatement({Key? key}) : super(key: key);

  @override
  State<EMIStatement> createState() => _EMIStatementState();
}

class _EMIStatementState extends State<EMIStatement> {
  double value = 25;
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
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                  onTap: () {}, child: SvgPicture.asset('assets/images/documentdownload.svg')),
            ),
          ],
        ),
        body: SafeArea(
            minimum: const EdgeInsets.all(14),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "E",
                        style: GoogleFonts.montserrat(
                            fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black)),
                    TextSpan(
                        text: "MI STATEMENT",
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
                    height: height / 60,
                  ),
                  Center(
                    child: Container(
                      width: width / 1.2,
                      height: height / 4,
                      child: AnimatedRadialGauge(
                        duration: const Duration(seconds: 5),
                        value: value,
                        curve: Curves.fastEaseInToSlowEaseOut,
                        alignment: Alignment.center,
                        progressBar: const GaugeRoundedProgressBar(color: purpleColor),
                        axis: const GaugeAxis(
                          min: 0,
                          max: 100,
                          degrees: 360,
                          // segments: [
                          //   GaugeSegment(
                          //       from: 0, to: 360, color: Color.fromARGB(255, 216, 216, 216))
                          // ],
                          style: GaugeAxisStyle(
                            thickness: 10,
                            background: Color.fromARGB(255, 216, 216, 216),
                          ),
                        ),
                        builder: (context, child, value) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                value.toInt().toString() + "%",
                                style: GoogleFonts.ptSerifCaption(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "PAID",
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 230,
                  //   // width: width / 1.1,
                  //   child: SfRadialGauge(axes: [
                  //     RadialAxis(
                  //         // canScaleToFit: true,
                  //         isInversed: true,
                  //         startAngle: 0,
                  //         endAngle: 360,
                  //         minimum: 0,
                  //         maximum: 100,
                  //         showTicks: false,
                  //         showLabels: false,
                  //         ranges: [
                  //           GaugeRange(
                  //             startValue: 0,
                  //             endValue: 60,
                  //             color: purpleColor,
                  //           ),
                  //         ],
                  //         pointers: const [
                  //           MarkerPointer(
                  //             borderWidth: 5,
                  //             value: 40,
                  //             markerType: MarkerType.circle,
                  //             // markerHeight: 25,
                  //             // markerWidth: 25,
                  //             color: purpleColor,
                  //           )
                  //         ],
                  //         annotations: <GaugeAnnotation>[
                  //           GaugeAnnotation(
                  //               widget: Column(
                  //                 children: [
                  //                   Text(
                  //                     value.toInt().toString() + "%",
                  //                     style: GoogleFonts.ptSerifCaption(
                  //                       color: Colors.black,
                  //                       fontSize: 24,
                  //                       fontWeight: FontWeight.w400,
                  //                     ),
                  //                   ),
                  //                   Text(
                  //                     "PAID",
                  //                     style: GoogleFonts.montserrat(
                  //                       color: Colors.black,
                  //                       fontSize: 18,
                  //                       fontWeight: FontWeight.w600,
                  //                     ),
                  //                   )
                  //                 ],
                  //               ),
                  //               angle: 90,
                  //               positionFactor: 0.85)
                  //         ])
                  //   ]),
                  // ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: height / 28,
                        width: width / 14,
                        decoration: BoxDecoration(gradient: LinearGradient(colors: mixPurpleColor)),
                      ),
                      SizedBox(
                        width: width / 30,
                      ),
                      Text(
                        "Paid " + value.toInt().toString() + "%",
                        style: GoogleFonts.ptSerifCaption(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: height / 28,
                        width: width / 14,
                        color: Color.fromARGB(255, 216, 216, 216),
                      ),
                      SizedBox(
                        width: width / 30,
                      ),
                      Text(
                        "Unpaid " + value.toInt().toString() + "%",
                        style: GoogleFonts.ptSerifCaption(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: purpleColor)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "12 April 2023",
                                style: GoogleFonts.ptSerifCaption(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: height / 80,
                              ),
                              Text(
                                "Emi conversion date".toUpperCase(),
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: height / 30,
                              ),
                              Text(
                                "\$ 4000",
                                style: GoogleFonts.ptSerifCaption(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: height / 80,
                              ),
                              Text(
                                "Bill Amount".toUpperCase(),
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                "\$ 925.00",
                                style: GoogleFonts.ptSerifCaption(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: height / 80,
                              ),
                              Text(
                                "Emi Amount".toUpperCase(),
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: height / 30,
                              ),
                              Text(
                                "6 Months",
                                style: GoogleFonts.ptSerifCaption(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: height / 80,
                              ),
                              Text(
                                "Emi Chosen".toUpperCase(),
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
