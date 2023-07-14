import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/product_detail_screen.dart';
import 'package:flutter_postpe_demo/Widgets/empty_cart_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'package:iconsax/iconsax.dart';
import '../Constants/colors.dart';
import '../Widgets/notification_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
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
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "P",
                          style: GoogleFonts.montserrat(
                              fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black)),
                      TextSpan(
                          text: "RODUCTS",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
                    ])),
                    Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmptyCartWidget(),
                          )),
                      child: badges.Badge(
                        // badgeContent: Text(
                        //   "5",
                        //   style: TextStyle(color: Colors.white),
                        // ),
                        showBadge: false,
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
                // SizedBox(
                //   height: height / 50,
                // ),
                // Text(
                //     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                //     style: GoogleFonts.ptSerifCaption(
                //         fontWeight: FontWeight.w400,
                //         fontSize: 12,
                //         color: Color.fromRGBO(0, 0, 0, 0.4))),
                SizedBox(
                  height: 30,
                ),
                GridView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 220),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailScreen(),
                            ));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Align(
                            //     alignment: Alignment.centerRight,
                            //     child: Icon(Icons.favorite_border)),
                            Expanded(
                              child: Center(
                                child: Image.network(
                                  'https://www.nicepng.com/png/detail/978-9785226_coca-cola-can-transparent-coca-cola.png',
                                ),
                              ),
                            ),
                            Text(
                              "Coca-Cola Classic",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Forem ipsum dolor sit amet",
                              style: GoogleFonts.ptSerifCaption(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF7C7A7A)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("\$87",
                                style: GoogleFonts.ptSerifCaption(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
