import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/constants/re_usable.dart';
import 'package:get/get.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/font_family.dart';
import '../utils/size_layout.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    return Scaffold(
      body: CustomBackground(
        child: Padding(
          padding: EdgeInsets.only(
              left: getScreenWidth(22), right: getScreenWidth(61.05)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeader(
                title: 'Congratulations!',
                subtitle: Text(
                  'Your account has been successfully\ncreated.',
                  style: TextStyle(
                      color: Palette.kHeaderTextColor,
                      fontSize: getScreenWidth(17.55),
                      fontFamily: FontFamily.kLightFamily,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: getScreenHeight(37.44),
              ),
              Padding(
                padding: EdgeInsets.only(left: getScreenWidth(36)),
                child: Image.asset('${imagePath}ic-congratulations.png'),
              ),
              SizedBox(
                height: getScreenHeight(66.59),
              ),
              Align(
                alignment: Alignment.center,
                child: CustomAuthButton(
                    height: 63,
                    width: 194.01,
                    text: 'Continue',
                    textColor: Palette.kWhiteColor,
                    primary: Palette.kPrimaryColor,
                    sideColor: Palette.kPrimaryColor,
                    onPressed: () {
                      Get.offAndToNamed('/homeScreen');
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
