import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/constants/re_usable.dart';
import 'package:mobile_assessment_flutter/utils/size_layout.dart';
import 'package:get/get.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/font_family.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    return CustomBackground(
        child: Padding(
          padding: EdgeInsets.only(
              left: getScreenWidth(15),
              right: getScreenHeight(23)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeader(
                title: 'Sign In',
                subtitle: Text(
                  'Sign in to continue to Cargo Express',
                  style: TextStyle(
                      color: Palette.kHeaderTextColor,
                      fontSize: getScreenWidth(17.55),
                      fontFamily: FontFamily.kLightFamily,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: getScreenHeight(22.44),
              ),
              CustomTextField(
                  text: 'Phone Number / E-mail ',
                  keyboardType: TextInputType.emailAddress
              ),
              SizedBox(
                height: getScreenHeight(20),
              ),
              CustomTextField(
                  text: 'Password',
                  keyboardType: TextInputType.text
              ),
              SizedBox(
                height: getScreenHeight(41),
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: (){
                      Get.toNamed('/getStartedScreen');
                    },
                    child: Text(
                      'Create an Account',
                      style: TextStyle(
                          color: Palette.kPrimaryColor,
                          fontSize: getScreenWidth(18),
                          fontFamily: FontFamily.kSemiBoldFamily,
                          fontWeight: FontWeight.w600),)
                ),
              ),
              SizedBox(
                height: getScreenHeight(75.33),
              ),
              Align(
                alignment: Alignment.center,
                child: CustomAuthButton(
                    height: 71.15,
                    width: 182.45,
                    text: 'Sign In',
                    textColor: Palette.kWhiteColor,
                    primary: Palette.kPrimaryColor,
                    sideColor: Palette.kPrimaryColor,
                    onPressed: (){
                      Get.offAndToNamed('/homeScreen');
                    }
                ),
              )
            ],
          ),
        )
    );
  }
}
