import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/size_layout.dart';
import 'package:get/get.dart';
import '../utils/constants/colors.dart';
import '../utils/constants/font_family.dart';
import '../utils/constants/re_usable.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    return CustomBackground(
      child: Padding(
        padding: EdgeInsets.only(
            left: getScreenWidth(26.33),
            right: getScreenWidth(28.64)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomHeader(
              title: 'What kind of user are\nyou?',
              subtitle: Text(
                'We will adapt the app to suit your\nneeds.',
                style: TextStyle(
                    color: Palette.kHeaderTextColor,
                    fontSize: getScreenWidth(17.55),
                    fontFamily: FontFamily.kLightFamily,
                    fontWeight: FontWeight.w300
                ),
              ),
            ),
            SizedBox(height: getScreenHeight(48.04)),
            CustomGetStartedButton(
              onPressed: () {
                Get.toNamed('/personalScreen');
              },
              text: 'Personal',
            ),
            SizedBox(height: getScreenHeight(40.96)),
            CustomGetStartedButton(
              onPressed: () {
                Get.toNamed('/eCommerceScreen');
              },
              text: 'E-commerce',
            ),
          ],
        ),
      ),
    );
  }
}
