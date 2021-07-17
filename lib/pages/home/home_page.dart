import 'package:flutter/material.dart';
import 'package:udemyclone/pages/breakpoints.dart';
import 'package:udemyclone/pages/home/widgets/appbar/mobile_appbar.dart';
import 'package:udemyclone/pages/home/widgets/appbar/web_appbar.dart';
import 'package:udemyclone/pages/home/widgets/sections/grid_section.dart';
import 'package:udemyclone/pages/home/widgets/sections/rate_section.dart';
import 'package:udemyclone/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakpoing
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56))
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),
                ),
          drawer: constraints.maxWidth < mobileBreakpoing ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: [
                  TopSectionWidget(),
                  RateWidget(),
                  GridSectionWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
