import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? TextAlign.left
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 30
              : 50;

      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 10
              : 15;

      return Container(
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "'FLUTTER WEB.\nCOMPONENTS'",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: titleSize,
                    height: 0.9),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'In this course we will go over the basics of using Flutter Web for website development.\nTopics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
                style: TextStyle(fontSize: descriptionSize, height: 1.7),
                textAlign: textAlignment,
              ),
            ]),
      );
    });
  }
}
