import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerItems extends StatelessWidget {
  final ZoomDrawerController zoomDrawerController;
  final Function(String) onItemSelected; // نضيف callback

  const DrawerItems({
    super.key,
    required this.zoomDrawerController,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        children: [
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text('Home', style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {
              zoomDrawerController.close?.call();
              onItemSelected('Home'); // ينادي على الـ callback
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline, color: Colors.white),
            title: const Text('Details', style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {
              zoomDrawerController.close?.call();
              onItemSelected('Details');
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_support, color: Colors.white),
            title: const Text('Our Team', style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {
              zoomDrawerController.close?.call();
              onItemSelected('Our Team');
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone, color: Colors.white),
            title: const Text('Contact Us', style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {
              zoomDrawerController.close?.call();
              onItemSelected('Contact Us');
            },
          ),
        ],
      ),
    );
  }
}
