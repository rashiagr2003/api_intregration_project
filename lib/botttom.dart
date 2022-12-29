import 'package:api_project/home.dart';
import 'package:api_project/home1.dart';
import 'package:api_project/home2.dart';
import 'package:api_project/modules/post_feed/pages/post_feed_page.dart';
import 'package:api_project/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          // allowImplicitScrolling: false,
          // pageSnapping: false,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => currentIndex = index);
          },
          children: [
            PostFeedPage(),

            HomeScreen(),
            SplashScreeen()
            //     // CouponPage(),
          ],
        ),
        bottomNavigationBar: GNav(
            hoverColor: Colors.grey[100]!,
            tabBackgroundColor: Colors.red,
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            duration: Duration(milliseconds: 400),
            // tabBackgroundColor: Colors.grey[100]!,

            color: Colors.black,
            tabs: [
              GButton(
                margin: EdgeInsets.symmetric(vertical: 7),
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.shopping_bag,
                text: 'Cart',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            selectedIndex: currentIndex,
            onTabChange: (index) {
              setState(() {
                currentIndex = index;
              });
              _pageController.animateToPage(currentIndex,
                  duration: Duration(milliseconds: 200), curve: Curves.easeIn);
            }));
  }
}
