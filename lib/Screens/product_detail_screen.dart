import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Constants/colors.dart';
import '../Widgets/notification_widget.dart';
import 'mycart_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int items = 1;
  PageController controller = PageController(initialPage: 0);
  List<Widget> list = [
    Image.network(
      'https://www.nicepng.com/png/detail/978-9785226_coca-cola-can-transparent-coca-cola.png',
    ),
    Image.network(
      'https://www.nicepng.com/png/detail/978-9785226_coca-cola-can-transparent-coca-cola.png',
    ),
    Image.network(
      'https://www.nicepng.com/png/detail/978-9785226_coca-cola-can-transparent-coca-cola.png',
    ),
    Image.network(
      'https://www.nicepng.com/png/detail/978-9785226_coca-cola-can-transparent-coca-cola.png',
    ),
    Image.network(
      'https://www.nicepng.com/png/detail/978-9785226_coca-cola-can-transparent-coca-cola.png',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      BackButton(),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MycartScreen(
                                index: items,
                              ),
                            )),
                        child: badges.Badge(
                          badgeContent: Text(
                            "2",
                            style: TextStyle(color: Colors.white),
                          ),
                          // showBadge: false,
                          position: badges.BadgePosition.custom(end: 2, bottom: 8),
                          badgeStyle: badges.BadgeStyle(
                              badgeGradient: badges.BadgeGradient.linear(colors: mixPurpleColor)),
                          child: Icon(
                            Iconsax.shopping_bag,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      NotificationWidget(
                        count: 1,
                        badge: true,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 300,
                    child: PageView(
                      controller: controller,
                      physics: const BouncingScrollPhysics(),
                      children: list,
                    ),
                  ),
                  SmoothPageIndicator(
                      controller: controller,
                      count: list.length,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: Colors.black,
                        dotHeight: 2,
                        dotWidth: 35,
                      ),
                      onDotClicked: (index) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Coca-Cola Classic",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Air Force 1 Shadow Beige Pale Ivory',
                      style: GoogleFonts.ptSerifCaption(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                  const ReadMoreText(
                    'Eros, parturient sit posuere amet. Sed dignissim enim nulla egestas vitae id augue eleifend. Nam commodo scelerisque enim integer risus Eros, parturient sit posuere amet. Sed dignissim enim nulla egestas vitae id augue eleifend. Nam commodo scelerisque enim integer risusEros ',
                    trimLines: 3,
                    colorClickableText: Colors.black,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Read less',
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("\$87",
                          style: GoogleFonts.ptSerifCaption(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (items > 1) {
                              items--;
                            }
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: mixPurpleColor,
                              )),
                          child: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(items.toString(),
                          style: GoogleFonts.ptSerifCaption(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            items++;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: mixPurpleColor,
                              )),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
              decoration: BoxDecoration(color: Colors.grey.shade100),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Another Product",
                        style:
                            GoogleFonts.ptSerifCaption(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const Spacer(),
                      Text(
                        "See All",
                        style: GoogleFonts.ptSerifCaption(
                          fontSize: 14,
                          color: Color(0xFF7F7F7F),
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 215,
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 200,
                            width: 160,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    height: 140,
                                    child: list[index],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Coca-Cola Classic",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '\$350',
                                  style: GoogleFonts.ptSerifCaption(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 15,
                          );
                        },
                        itemCount: list.length),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MycartScreen(
                          index: items,
                        ),
                      ));
                },
                child: Container(
                    width: 200,
                    height: 45,
                    padding: const EdgeInsets.all(8),
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
                                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                        TextSpan(
                            text: "DD ",
                            style: GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                        TextSpan(
                            text: "TO ",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                        TextSpan(
                            text: "C",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                        TextSpan(
                            text: "ART",
                            style: GoogleFonts.montserrat(
                                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                      ])),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
