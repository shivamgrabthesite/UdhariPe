import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_button/group_button.dart';
import 'package:iconsax/iconsax.dart';
import 'package:badges/badges.dart' as badges;
import '../Constants/colors.dart';
import '../Widgets/notification_widget.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final controller = GroupButtonController();
  final controller1 = GroupButtonController();
  final controller2 = GroupButtonController();
  int tag = 0;
  List<String> options = [
    'Success',
    'Failed',
    'Pending',
    'Dispute',
  ];
  List<String> options1 = [
    'Send Money',
    'Refund',
    'Repayment',
  ];
  List<String> options2 = [
    'March 2023',
    'April 2023',
    'Choose Date',
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "T",
                          style: GoogleFonts.montserrat(
                              fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black)),
                      TextSpan(
                          text: "RANSACTION",
                          style: GoogleFonts.montserrat(
                              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
                    ])),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                          filterBottomsheet(context);
                        },
                        child: SvgPicture.asset('assets/images/setting4.svg')),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset('assets/images/documentdownload.svg')),
                    SizedBox(
                      width: 5,
                    ),
                    NotificationWidget(
                      count: 1,
                      badge: true,
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "LATEST RECIPIENTS",
                      style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://static.fotor.com/app/features/img/aiimage/scenes/a%20realistic%20fox%20in%20the%20lake%20generated%20by%20ai%20image%20creator.png"),
                          radius: 26,
                        ),
                        Text(
                          "Stella",
                          style: GoogleFonts.ptSerifCaption(),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://static.fotor.com/app/features/img/aiimage/scenes/a%20realistic%20fox%20in%20the%20lake%20generated%20by%20ai%20image%20creator.png"),
                          radius: 26,
                        ),
                        Text(
                          "Stella",
                          style: GoogleFonts.ptSerifCaption(),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://static.fotor.com/app/features/img/aiimage/scenes/a%20realistic%20fox%20in%20the%20lake%20generated%20by%20ai%20image%20creator.png"),
                          radius: 26,
                        ),
                        Text(
                          "Stella",
                          style: GoogleFonts.ptSerifCaption(),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://static.fotor.com/app/features/img/aiimage/scenes/a%20realistic%20fox%20in%20the%20lake%20generated%20by%20ai%20image%20creator.png"),
                          radius: 26,
                        ),
                        Text(
                          "Stella",
                          style: GoogleFonts.ptSerifCaption(),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        DottedBorder(
                          borderType: BorderType.Circle,
                          color: Color.fromRGBO(76, 57, 142, 1),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: mixPurpleColor),
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          "",
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "LATEST TRANSACTION",
                      style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.all(2),
                    //   width: 90,
                    //   height: 30,
                    //   child: OutlinedButton(
                    //       style: OutlinedButton.styleFrom(
                    //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    //           side: BorderSide(
                    //             color: purpleColor,
                    //           )),
                    //       onPressed: () {},
                    //       child: Text(
                    //         "See All",
                    //         style: GoogleFonts.ptSerifCaption(
                    //             color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
                    //       )),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 15,
                    );
                  },
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      visualDensity: VisualDensity(vertical: -4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: purpleColor,
                          )),
                      leading: CircleAvatar(
                        backgroundColor: purpleColor,
                        child: Icon(
                          Iconsax.fatrows,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      title: Text(
                        "USER",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        "6:22 PM",
                        style: GoogleFonts.ptSerifCaption(color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                      trailing: Text(
                        "\$220",
                        style: GoogleFonts.ptSerifCaption(
                            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> filterBottomsheet(BuildContext context) {
    return showModalBottomSheet(
      enableDrag: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                Row(
                  children: [
                    BackButton(
                      color: Colors.black,
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          setState.call(
                            () {
                              controller.unselectAll();
                              controller1.unselectAll();
                              controller2.unselectAll();
                            },
                          );
                        },
                        child: Text(
                          "Reset",
                          style: GoogleFonts.ptSerifCaption(
                              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "F",
                      style: GoogleFonts.montserrat(
                          fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black)),
                  TextSpan(
                      text: "ILTER",
                      style: GoogleFonts.montserrat(
                          fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
                ])),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "STATUS",
                    style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                GroupButton(
                  buttons: options,
                  enableDeselect: true,
                  controller: controller,
                  isRadio: false,
                  options: GroupButtonOptions(
                      mainGroupAlignment: MainGroupAlignment.start,
                      elevation: 0,
                      borderRadius: BorderRadius.circular(30),
                      selectedColor: purpleColor,
                      selectedBorderColor: purpleColor,
                      unselectedBorderColor: Colors.black,
                      unselectedColor: Colors.white,
                      spacing: 5,
                      textPadding: EdgeInsets.all(6),
                      buttonHeight: 28),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 20,
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "STATUS",
                    style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                GroupButton(
                  buttons: options1,
                  enableDeselect: true,
                  controller: controller1,
                  isRadio: false,
                  options: GroupButtonOptions(
                      mainGroupAlignment: MainGroupAlignment.start,
                      elevation: 0,
                      borderRadius: BorderRadius.circular(30),
                      selectedColor: purpleColor,
                      selectedBorderColor: purpleColor,
                      unselectedBorderColor: Colors.black,
                      unselectedColor: Colors.white,
                      spacing: 5,
                      textPadding: EdgeInsets.all(6),
                      buttonHeight: 28),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 20,
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "STATUS",
                    style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                GroupButton(
                  buttons: options2,
                  enableDeselect: true,
                  controller: controller2,
                  isRadio: false,
                  options: GroupButtonOptions(
                      mainGroupAlignment: MainGroupAlignment.start,
                      elevation: 0,
                      borderRadius: BorderRadius.circular(30),
                      selectedColor: purpleColor,
                      selectedBorderColor: purpleColor,
                      unselectedBorderColor: Colors.black,
                      unselectedColor: Colors.white,
                      spacing: 5,
                      textPadding: EdgeInsets.all(6),
                      buttonHeight: 28),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            TextSpan(
                                text: "HOW ",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            TextSpan(
                                text: "35 ",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            TextSpan(
                                text: "R",
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            TextSpan(
                                text: "ESULTS",
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ])),
                        )),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ).then((value) {
      setState(() {});
    });
  }
}
