import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'route/locator.dart';
import 'route/navigation_service.dart';
import 'route/route.dart';
import 'route/route_names.dart';
import 'widgets/centered_view/centered_view.dart';
import 'widgets/navigation_bar/navigation_bar.dart';
import 'widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                  child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
