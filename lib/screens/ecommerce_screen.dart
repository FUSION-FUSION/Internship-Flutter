import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/font_family.dart';
import '../utils/constants/re_usable.dart';
import '../utils/size_layout.dart';

class EcommerceScreen extends StatefulWidget {
  const EcommerceScreen({Key? key}) : super(key: key);

  @override
  State<EcommerceScreen> createState() => _EcommerceScreenState();
}

class _EcommerceScreenState extends State<EcommerceScreen> {
  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    return CustomBackground(
        child: Padding(
          padding: EdgeInsets.only(
              left: getScreenWidth(15),
              right: getScreenWidth(23),
              bottom: getScreenHeight(88.54)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getScreenWidth(7)),
                child: CustomHeader(
                  title: 'Welcome!',
                  subtitle: Text(
                    'Create an account to get started\nwith Cargo Express',
                    style: TextStyle(
                        color: Palette.kHeaderTextColor,
                        fontSize: getScreenWidth(17.55),
                        fontFamily: FontFamily.kLightFamily,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              SizedBox(height: getScreenHeight(22.44)),
              CustomTextField(
                text: 'Business Name',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: getScreenHeight(20)),
              CustomTextField(
                text: 'Official E-mail',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: getScreenHeight(20)),
              CustomTextField(
                text: 'Contact Number',
                prefix: SizedBox(
                  width: getScreenWidth(110),
                  height: getScreenHeight(70),
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                        side: BorderSide(color: Colors.grey.shade100)),
                    child: CountryCodePicker(
                      initialSelection: 'NG',
                      showFlagDialog: true,
                      showFlag: false,
                      showDropDownButton: true,
                      showFlagMain: false,
                    ),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: getScreenHeight(20)),
              CustomTextField(
                text: 'Password',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: getScreenHeight(20)),
              CustomTextField(
                text: 'Confirm Password',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: getScreenHeight(27)),
              Align(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                            fontSize: getScreenWidth(18),
                            fontWeight: FontWeight.w300,
                            color: Palette.kHeaderTextColor,
                            fontFamily: FontFamily.kLightFamily),
                        children: [
                          TextSpan(
                              text: 'Log In',
                              recognizer: TapGestureRecognizer()..onTap = () => Get.toNamed('signInScreen'),
                              style: TextStyle(
                                  fontSize: getScreenWidth(18),
                                  fontWeight: FontWeight.w600,
                                  color: Palette.kPrimaryColor,
                                  fontFamily: FontFamily.kBoldFamily))
                        ])),
              ),
              SizedBox(height: getScreenHeight(27)),
              Padding(
                padding: EdgeInsets.only(
                    left: getScreenWidth(27), right: getScreenWidth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomAuthButton(
                      height: 63.5,
                      width: 141.77,
                      onPressed: () {
                        Get.offNamed('/getStartedScreen');
                      },
                      primary: Color(0xffF5F5F5),
                      sideColor: Colors.white,
                      textColor: Palette.kBlackColor,
                      text: 'Back',
                    ),
                    CustomAuthButton(
                      height: 63.5,
                      width: 141.77,
                      onPressed: () {
                        Get.offAndToNamed('verificationScreen');
                      },
                      primary: Palette.kPrimaryColor,
                      sideColor: Palette.kPrimaryColor,
                      textColor: Palette.kWhiteColor,
                      text: 'Next',
                    )
                  ],
                ),
              )
            ],
          ),
        ));;
  }
}
