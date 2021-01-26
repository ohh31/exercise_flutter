import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'component/nav_bar_item.dart';
import 'navigation_logo.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            NavBarLogo(),
            SizedBox(
              height: 10,
            ),
            Text(
              "OHBOX",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            NavBarItem('Episodes'),
            SizedBox(
              height: 10,
            ),
            NavBarItem('About'),
          ],
        ));
  }
}

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          NavBarLogo()
        ],
      ),
    );
  }
}
