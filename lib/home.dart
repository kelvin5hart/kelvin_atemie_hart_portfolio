import 'package:flutter/material.dart';

import 'screens/desktop/desktop_body.dart';
import 'screens/mobile/mobile_body.dart';
import 'screens/responsive_layout.dart';
import 'screens/tablet/tablet_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileBody: MobileBodyScreen(),
        tabletBody: TabletBodyScreen(),
        desktopBody: DesktopBodyScreen());
  }
}
