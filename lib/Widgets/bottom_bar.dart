import 'package:flutter/material.dart';
import 'package:flutter_postpe_demo/Screens/home_screen.dart';
import 'package:flutter_postpe_demo/Screens/profile_screen.dart';
import 'package:flutter_postpe_demo/Screens/qrcode_screen.dart';
import 'package:flutter_postpe_demo/Screens/transaction_screen.dart';
import 'package:flutter_postpe_demo/Screens/product_screen.dart';
import 'package:iconsax/iconsax.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../Constants/colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> with SingleTickerProviderStateMixin {
  late PersistentTabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PersistentTabView(
          context,
          controller: _controller,
          backgroundColor: const Color.fromARGB(255, 250, 250, 250),
          onItemSelected: (value) {},
          hideNavigationBarWhenKeyboardShows: true,
          navBarHeight: 60,
          stateManagement: false,
          screens: const [
            HomeScreen(),
            ProductScreen(),
            QRCodeScreen(),
            TransactionScreen(),
            ProfileScreen(),
          ],
          items: [
            PersistentBottomNavBarItem(
                icon: Icon(Iconsax.home, color: purpleColor),
                title: "Home",
                activeColorPrimary: purpleColor,
                inactiveColorPrimary: purpleColor),
            PersistentBottomNavBarItem(
                icon: Icon(Iconsax.shop, color: purpleColor),
                title: "Products",
                activeColorPrimary: purpleColor,
                inactiveColorPrimary: purpleColor),
            PersistentBottomNavBarItem(
                icon: Icon(Iconsax.scan, color: purpleColor),
                title: "QR Code",
                activeColorPrimary: purpleColor,
                inactiveColorPrimary: purpleColor),
            PersistentBottomNavBarItem(
                icon: Icon(Iconsax.fatrows, color: purpleColor),
                title: "Transaction",
                activeColorPrimary: purpleColor,
                inactiveColorPrimary: purpleColor),
            PersistentBottomNavBarItem(
                icon: Icon(Iconsax.profile_2user, color: purpleColor),
                title: "Profile",
                activeColorPrimary: purpleColor,
                inactiveColorPrimary: purpleColor)
          ],
        ),
      ),
    );
  }
}
