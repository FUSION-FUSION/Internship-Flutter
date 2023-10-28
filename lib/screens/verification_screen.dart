import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/utils/constants/re_usable.dart';
import 'package:mobile_assessment_flutter/utils/size_layout.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/font_family.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {

  bool completed = false;

  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    return CustomBackground(
        child: Padding(
          padding: EdgeInsets.only(
            left: getScreenWidth(22),
            right: getScreenWidth(57),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeader(
                  title: 'Verification!',
                  subtitle: RichText(
                    text: TextSpan(
                        text: 'We sent you an ',
                        style: TextStyle(
                            fontSize: getScreenWidth(16),
                            fontWeight: FontWeight.w300,
                            color: Palette.kHeaderTextColor,
                            fontFamily: FontFamily.kLightFamily
                        ),
                        children: [
                          TextSpan(
                              text: 'SMS ',
                              style: TextStyle(
                                  fontSize: getScreenWidth(16),
                                  fontWeight: FontWeight.w500,
                                  color: Palette.kPrimaryColor,
                                  fontFamily: FontFamily.kMediumFamily
                              )
                          ),
                          TextSpan(
                            text: 'code on\nnumber ',
                            style: TextStyle(
                                fontSize: getScreenWidth(16),
                                fontWeight: FontWeight.w300,
                                color: Palette.kHeaderTextColor,
                                fontFamily: FontFamily.kLightFamily
                            ),
                          ),
                          TextSpan(
                              text: '+2348108960610',
                              style: TextStyle(
                                  fontSize: getScreenWidth(16),
                                  fontWeight: FontWeight.w500,
                                  color: Palette.kPrimaryColor,
                                  fontFamily: FontFamily.kMediumFamily
                              )
                          )
                        ]
                    ),
                  )
              ),
              SizedBox(height: getScreenHeight(28.44)),
              PinCodeTextField(
                appContext: (context),
                length: 5,
                onChanged: (value){},
                onCompleted: (value){
                  setState(() {
                    completed = true;
                  });
                },
                enableActiveFill: true,
                keyboardType: TextInputType.number,
                cursorColor: Palette.kTextColor,
                pinTheme: PinTheme(
                    fieldHeight: getScreenHeight(66.66),
                    fieldWidth: getScreenWidth(57),
                    inactiveFillColor: Palette.kTextFieldColor,
                    inactiveColor: Palette.kTextFieldColor,
                    activeFillColor: Palette.kTextFieldColor,
                    activeColor: Palette.kTextFieldColor,
                    disabledColor: Palette.kTextFieldColor,
                    selectedColor: Palette.kTextFieldColor,
                    borderRadius: BorderRadius.circular(10),
                    selectedFillColor: Palette.kTextFieldColor
                ),
              ),
              SizedBox(height: getScreenHeight(14.34)),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  completed ?  'Code Expired' :  '00:52',
                  style: TextStyle(
                      color: Palette.kRedColor,
                      fontSize: getScreenWidth(16),
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.kRegularFamily
                  ),
                ),
              ),
              SizedBox(height: getScreenHeight(22)),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      completed = !completed;
                    });
                  },
                  child: Text(
                    'Resend Code',
                    style: TextStyle(
                        color: Palette.kBlackColor,
                        fontSize: getScreenWidth(18),
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamily.kSemiBoldFamily
                    ),
                  ),
                ),
              ),
              SizedBox(height: getScreenHeight(22)),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Get.offAndToNamed('/successScreen');
                  },
                  child: Container(
                    height: getScreenHeight(59),
                    width: getScreenWidth(59),
                    decoration: BoxDecoration(
                        color: Palette.kPrimaryColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Palette.kWhiteColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
