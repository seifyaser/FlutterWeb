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

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _zoomDrawerController = ZoomDrawerController();
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) {
        return ZoomDrawer(
          controller: _zoomDrawerController,
          style: DrawerStyle.defaultStyle,
          menuScreen: Scaffold(
            backgroundColor: const Color(0xFF23113B),
            body: DrawerItems(zoomDrawerController: _zoomDrawerController),
          ),
          mainScreen: buildMainScaffold(
            onMenuPressed: () => _zoomDrawerController.toggle?.call(),
          ),
          borderRadius: 24.0,
          showShadow: true,
          angle: -10.0,
          drawerShadowsBackgroundColor: Colors.grey.shade300,
          slideWidth: MediaQuery.of(context).size.width * 0.65,
          menuBackgroundColor: const Color(0xFF3D205A),
        );
      },
      desktop: (BuildContext context) {
        return buildMainScaffold(onMenuPressed: () {});
      },
    );
  }

  Widget buildMainScaffold({required VoidCallback onMenuPressed}) {
  return Scaffold(
    backgroundColor: Colors.transparent,
    body: Stack(
      children: [
        // 1. gradient ثابت
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.center,
                colors: [
                  Color.fromARGB(238, 19, 9, 32),
                  Color(0xFF1D0A33),
                  Color(0xFF130425),
                ],
                
              ),
              
            ),
          ),
        ),

        // 2. الصورة تتحرك مع scroll
        Positioned(
          top: -_scrollOffset * 0.5, // تأثير parallax
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

        // 3. المحتوى (ListView) تحت الـ NavigationBar
        Scrollbar(
          trackVisibility: true,
          thickness: 8,
          radius: const Radius.circular(12),
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            padding: const EdgeInsets.only(top: 100), // مسافة عشان ما يخشش تحت الـ Navbar
            children: const [
              FirstCard(),
              SizedBox(height: 65),
              Secondcard(),
             // SizedBox(height: 150),
              Thirdcard(),
              FourthCard(),
              ContactUsPage(),
            ],
          ),
        ),

        // 4. CustomNavigationBar مثبت فوق
        Positioned(
  top: 0,
  left: 0,
  right: 0,
  child: Container(
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.2),
    ),
    child: CenteredView(
      child: CustomNavigationBar(
        onMenuPressed: onMenuPressed,
      ),
    ),
  ),
),
      ],
    ),
  );
}

}
