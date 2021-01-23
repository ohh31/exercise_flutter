import 'package:flutter/material.dart';

import 'component/CallToActionButton.dart';
import 'home_body.dart';
import 'main.dart';
import 'navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Row(
          children: <Widget>[
            NavigationBar(),
            VerticalDivider(
              thickness: 1,
              width: 1,
              color: Colors.black26,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeBody(),
                  SizedBox(height: 30,),
                  Center(
                    child: CallToActionButton('View'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CenteredView extends StatelessWidget {
  final Widget child;

  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      alignment: Alignment.topLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
