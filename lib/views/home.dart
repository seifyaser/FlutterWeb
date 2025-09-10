import 'package:demo/utils/CenteredView.dart';
import 'package:demo/widgets/FourthCard/FourthCard.dart';
import 'package:demo/widgets/LastCard/lastCard.dart';
import 'package:demo/widgets/NavigationBar/Drawer_Items.dart';
import 'package:demo/widgets/NavigationBar/NavigationBar.dart';
import 'package:demo/widgets/SecondCard/SecondCard.dart';
import 'package:demo/widgets/firstCard/FirstCard.dart';
import 'package:demo/widgets/thirdCard/thirdCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _zoomDrawerController = ZoomDrawerController();
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener = ItemPositionsListener.create();

  double _scrollOffset = 0;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => buildMobileView(),
      desktop: (context) => buildDesktopView(),
    );
  }

  Widget buildDesktopView() {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Gradient ثابت
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(238, 19, 9, 32),
                    Color(0xFF1D0A33),
                    Color(0xFF130425),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),

          // الصورة تتحرك مع scroll
          Positioned(
            top: -_scrollOffset * 0.5,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/firstbackgropund.jpg',
              fit: BoxFit.cover,
              height: 600,
              color: Colors.black.withOpacity(0.3),
              colorBlendMode: BlendMode.darken,
            ),
          ),

          // المحتوى الرئيسي
          NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (scrollNotification is ScrollUpdateNotification) {
                setState(() {
                  _scrollOffset = scrollNotification.metrics.pixels;
                });
              }
              return false;
            },
            child: ScrollablePositionedList.builder(    // بديل لل listview عشان cards بتاعت nav bar تشتتغل لما تضغط عليها كلها
              itemScrollController: _itemScrollController,
              itemPositionsListener: _itemPositionsListener,
              padding: const EdgeInsets.only(top: 100),
              itemCount: 5,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return FirstCard();
                  case 1:
                    return Secondcard();
                  case 2:
                    return Thirdcard();
                  case 3:
                    return FourthCard();
                  case 4:
                    return ContactUsPage();
                  default:
                    return const SizedBox.shrink();
                }
              },
            ),
          ),

          // Navigation Bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black.withOpacity(0.2),
              child: CenteredView(
                child: CustomNavigationBar(
                  onMenuPressed: () => _zoomDrawerController.toggle?.call(),
                  onItemSelected: (title) {
                    switch (title) {
                      case 'Home':
                        _itemScrollController.scrollTo(
                            index: 0, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                        break;
                      case 'Details':
                        _itemScrollController.scrollTo(
                            index: 1, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                        break;
                      case 'Our Team':
                        _itemScrollController.scrollTo(
                            index: 2, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                        break;

                      case 'Contact Us':
                        _itemScrollController.scrollTo(
                            index: 4, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                        break;
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMobileView() {
    return ZoomDrawer(
      controller: _zoomDrawerController,
      style: DrawerStyle.defaultStyle,
     menuScreen: Scaffold(
      backgroundColor: Color(0xff23113b),
       body: DrawerItems(
         zoomDrawerController: _zoomDrawerController,
         onItemSelected: (title) {
           switch (title) {
        case 'Home':
          _itemScrollController.scrollTo(index: 0, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
          break;
        case 'Details':
          _itemScrollController.scrollTo(index: 1, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
          break;
        case 'Our Team':
          _itemScrollController.scrollTo(index: 2, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
          break;
        case 'Contact Us':
          _itemScrollController.scrollTo(index: 4, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
          break;
           }
         },
       ),
     ),
      mainScreen: buildDesktopView(), // Scroll يعمل هنا أيضاً
      borderRadius: 24.0,
      showShadow: true,
      angle: -10.0,
      drawerShadowsBackgroundColor: Colors.grey.shade300,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      menuBackgroundColor: const Color(0xFF3D205A),
    );
  }
}
