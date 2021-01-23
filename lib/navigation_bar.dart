import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
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
            _NavBarItem('Episodes'),
            SizedBox(
              height: 10,
            ),
            _NavBarItem('About'),
          ],
        ));
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;

  const _NavBarItem(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
    );
  }
}
