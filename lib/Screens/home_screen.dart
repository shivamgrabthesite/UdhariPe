import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../Constants/colors.dart';
import '../Widgets/notification_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController();
  int selectedValue = 0;
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
              Padding(
                padding: const EdgeInsets.only(top: 14, left: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 14),
                      child: Row(
                        children: [
                          Text(
                            "UDHAARIPE",
                            style: GoogleFonts.ptSerifCaption(
                                color: purpleColor, fontWeight: FontWeight.w400, fontSize: 26),
                          ),
                          Spacer(),
                          NotificationWidget(
                            count: 1,
                            badge: true,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 50,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://static.fotor.com/app/features/img/aiimage/scenes/a%20realistic%20fox%20in%20the%20lake%20generated%20by%20ai%20image%20creator.png"),
                          radius: 24,
                        ),
                        SizedBox(
                          width: width / 80,
                        ),
                        Column(
                          children: [
                            Text(
                              "Welcome Back 👋",
                              style: GoogleFonts.ptSerifCaption(
                                  color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Text("savaliya shivam",
                                style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black)),
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset('assets/images/img1.svg')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 60,
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Container(
                      height: 240,
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: purpleColor),
                            borderRadius: BorderRadius.circular(14)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      cleardueBottomsheet(context, height, width).then((value) {
                                        setState(() {});
                                      });
                                    },
                                    child: Container(
                                        width: 100,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: purpleColor)),
                                        child: Center(
                                          child: Text(
                                            "CLEAR DUES",
                                            style: GoogleFonts.ptSerifCaption(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Stack(alignment: Alignment.center, children: [
                                Positioned(
                                  height: 250,
                                  top: 0,
                                  child: SfRadialGauge(axes: [
                                    RadialAxis(
                                        startAngle: 180,
                                        endAngle: 0,
                                        minimum: 0,
                                        maximum: 100,
                                        showTicks: false,
                                        showLabels: false,
                                        ranges: [
                                          GaugeRange(
                                            startValue: 0,
                                            endValue: 40,
                                            color: purpleColor,
                                          ),
                                        ],
                                        pointers: [
                                          MarkerPointer(
                                            borderWidth: 5,
                                            value: 40,
                                            markerHeight: 25,
                                            markerWidth: 25,
                                            markerType: MarkerType.circle,
                                            color: purpleColor,
                                          )
                                        ],
                                        annotations: <GaugeAnnotation>[
                                          GaugeAnnotation(
                                              widget: Column(
                                                children: [
                                                  Text('25,000',
                                                      style: GoogleFonts.ptSerifCaption(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500)),
                                                  Text('Total Limit',
                                                      style: GoogleFonts.ptSerifCaption(
                                                        fontSize: 16,
                                                      )),
                                                ],
                                              ),
                                              angle: 90,
                                              verticalAlignment: GaugeAlignment.center,
                                              horizontalAlignment: GaugeAlignment.center,
                                              positionFactor: 0.5)
                                        ])
                                  ]),
                                ),
                                Positioned(
                                  bottom: 12,
                                  child: GestureDetector(
                                    onTap: () {
                                      totalLimitBottomsheet(context, height, width);
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 300,
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: mixPurpleColor),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 12),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "15,000",
                                                  style: GoogleFonts.ptSerifCaption(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                Text(
                                                  "Available",
                                                  style: GoogleFonts.ptSerifCaption(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 12),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "10,000",
                                                  style: GoogleFonts.ptSerifCaption(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                                Text(
                                                  "Used",
                                                  style: GoogleFonts.ptSerifCaption(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 26,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "L",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
                          TextSpan(
                              text: "ATEST ",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black)),
                          TextSpan(
                              text: "T",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
                          TextSpan(
                              text: "RANSACTION",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black)),
                        ])),
                        Container(
                          padding: const EdgeInsets.all(2),
                          width: width / 3.4,
                          height: height / 20,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  side: BorderSide(color: purpleColor)),
                              onPressed: () {},
                              child: Text(
                                "SEE ALL",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height / 60,
                    ),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: height / 60,
                        );
                      },
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          visualDensity: VisualDensity(vertical: -4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: purpleColor)),
                          leading: Icon(
                            Iconsax.fatrows,
                            color: purpleColor,
                            size: 30,
                          ),
                          title: Text(
                            "User",
                            style: TextStyle(color: Colors.black),
                          ),
                          subtitle: Text(
                            "6:22 PM",
                          ),
                          trailing: Text(
                            "\$220",
                            style: TextStyle(
                                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> totalLimitBottomsheet(BuildContext context, double height, double width) {
    return showModalBottomSheet(
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
          child: Container(
            height: height / 2,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("total limit",
                        style: GoogleFonts.ptSerifCaption(fontSize: 18, color: Colors.black)),
                    const Spacer(),
                    Text("21,000",
                        style: GoogleFonts.ptSerifCaption(fontSize: 18, color: Colors.black))
                  ],
                ),
                Divider(
                  height: 20,
                  color: Colors.grey.withOpacity(0.3),
                  thickness: 2,
                ),
                Row(
                  children: [
                    Text("available limit",
                        style: GoogleFonts.ptSerifCaption(
                            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                    const Spacer(),
                    Text("1,000",
                        style: GoogleFonts.ptSerifCaption(
                            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))
                  ],
                ),
                Divider(
                  height: 20,
                  color: Colors.grey.withOpacity(0.3),
                  thickness: 2,
                ),
                Row(
                  children: [
                    Text("used limit",
                        style: GoogleFonts.ptSerifCaption(fontSize: 18, color: Colors.black)),
                    const Spacer(),
                    Text("19,000",
                        style: GoogleFonts.ptSerifCaption(fontSize: 18, color: Colors.black))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 8, bottom: 8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("spent",
                              style: GoogleFonts.ptSerifCaption(
                                fontSize: 16,
                                color: Colors.grey,
                              )),
                          const Spacer(),
                          Text("19,000",
                              style: GoogleFonts.ptSerifCaption(
                                fontSize: 16,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: height / 90,
                      ),
                      // Row(
                      //   children: [
                      //     Text("previous balance",
                      //         style: GoogleFonts
                      //             .ptSerifCaption(
                      //           fontSize: 16,
                      //           color: Colors.grey,
                      //         )),
                      //     const Spacer(),
                      //     Text("0",
                      //         style: GoogleFonts
                      //             .ptSerifCaption(
                      //           fontSize: 16,
                      //           color: Colors.grey,
                      //         ))
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: height / 90,
                      // ),
                      Row(
                        children: [
                          Text("future emis",
                              style: GoogleFonts.ptSerifCaption(
                                fontSize: 16,
                                color: Colors.grey,
                              )),
                          const Spacer(),
                          Text("0",
                              style: GoogleFonts.ptSerifCaption(
                                fontSize: 16,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: height / 90,
                      ),
                      // Row(
                      //   children: [
                      //     Text("repayments",
                      //         style: GoogleFonts
                      //             .ptSerifCaption(
                      //           fontSize: 16,
                      //           color: Colors.grey,
                      //         )),
                      //     const Spacer(),
                      //     Text("0",
                      //         style: GoogleFonts
                      //             .ptSerifCaption(
                      //           fontSize: 16,
                      //           color: Colors.grey,
                      //         ))
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: height / 90,
                      // ),
                      Row(
                        children: [
                          Text("recieved money",
                              style: GoogleFonts.ptSerifCaption(
                                fontSize: 16,
                                color: Colors.grey,
                              )),
                          const Spacer(),
                          Text("0",
                              style: GoogleFonts.ptSerifCaption(
                                fontSize: 16,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("overdue interest",
                        style: GoogleFonts.ptSerifCaption(fontSize: 18, color: Colors.black)),
                    const Spacer(),
                    Text("0", style: GoogleFonts.ptSerifCaption(fontSize: 18, color: Colors.black))
                  ],
                ),
                Divider(
                  height: 20,
                  color: Colors.grey.withOpacity(0.3),
                  thickness: 2,
                ),
                Row(
                  children: [
                    Text("due now",
                        style: GoogleFonts.ptSerifCaption(fontSize: 18, color: Colors.red)),
                    const Spacer(),
                    Text("0", style: GoogleFonts.ptSerifCaption(fontSize: 18, color: Colors.red))
                  ],
                ),
                SizedBox(
                  height: height / 50,
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
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: mixPurpleColor,
                            transform: GradientRotation(287.42 * 3.1415926535 / 180),
                          ),
                        ),
                        child: Center(
                            child: Text(
                          "OK",
                          style: GoogleFonts.ptSerifCaption(fontSize: 18, color: Colors.white),
                        ))),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> cleardueBottomsheet(BuildContext context, double height, double width) {
    return showModalBottomSheet(
      // isDismissible: false,
      isScrollControlled: true,
      context: context,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            height: height / 2,
            child: StatefulBuilder(
              builder: (context, setState) => Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "clear dues",
                        style: GoogleFonts.ptSerifCaption(
                            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.cancel))
                    ],
                  ),
                  SizedBox(
                    height: height / 80,
                  ),
                  RadioListTile(
                    activeColor: purpleColor,
                    visualDensity: VisualDensity(horizontal: -4),
                    title: Row(
                      children: [
                        Text(
                          "total outstanding",
                          style: GoogleFonts.ptSerifCaption(
                              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Text(
                          "19,000",
                          style: GoogleFonts.ptSerifCaption(
                              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    value: 0,
                    groupValue: selectedValue,
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = int.parse(newValue.toString());
                        print("---------" + selectedValue.toString());
                      });
                    },
                  ),
                  Container(
                    height: 100,
                    child: RadioListTile(
                      activeColor: purpleColor,
                      visualDensity: const VisualDensity(horizontal: -4),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Custom Amount",
                            style: GoogleFonts.ptSerifCaption(
                                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 200,
                            height: 50,
                            child: TextFormField(
                              enabled: selectedValue == 1 ? true : false,
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
                                  hintStyle:
                                      GoogleFonts.ptSerifCaption(fontSize: 28, color: Colors.black),
                                  prefixIconConstraints:
                                      const BoxConstraints(minWidth: 0, minHeight: 0),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          const BorderSide(color: Color.fromRGBO(0, 0, 0, 0.4))),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          const BorderSide(color: Color.fromRGBO(0, 0, 0, 0.4))),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          const BorderSide(color: Color.fromRGBO(0, 0, 0, 0.4)))),
                            ),
                          ),
                        ],
                      ),
                      value: 1,
                      groupValue: selectedValue,
                      onChanged: (newValue) {
                        setState(() {
                          selectedValue = int.parse(newValue.toString());
                          print("---------" + selectedValue.toString());
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: width / 1.8,
                          height: height / 16,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: mixPurpleColor,
                              transform: GradientRotation(287.42 * 3.1415926535 / 180),
                            ),
                          ),
                          child: Center(
                              child: Text(
                            "OK",
                            style: GoogleFonts.ptSerifCaption(fontSize: 18, color: Colors.white),
                          ))),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
