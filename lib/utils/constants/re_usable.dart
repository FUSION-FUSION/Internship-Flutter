import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/size_layout.dart';

import 'colors.dart';
import 'font_family.dart';

String get imagePath => 'assets/images/';

class CustomHeader extends StatelessWidget {

  CustomHeader({required this.title, required this.subtitle});

  String title;
  Widget subtitle;

  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: getScreenHeight(130.56)),
        Text(
          title,
          style: TextStyle(
              color: Palette.kHeaderTextColor,
              fontSize: getScreenWidth(26.33),
              fontFamily: FontFamily.kMediumFamily,
              fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(height: getScreenHeight(4.09)),
        subtitle
      ],
    );
  }
}

class CustomGetStartedButton extends StatelessWidget {

  CustomGetStartedButton({required this.onPressed, required this.text,});

  void Function()? onPressed;
  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenHeight(136.78),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: Palette.kWhiteColor,
              fontSize: getScreenWidth(39.5),
              fontWeight: FontWeight.w700,
              fontFamily: FontFamily.kBoldFamily
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
            primary: Palette.kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.87),
            )
        ),
      ),
    );
  }
}

class CustomBackground extends StatelessWidget {

  CustomBackground({required this.child});
  Widget child;

  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    return Scaffold(
      backgroundColor: Palette.kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getScreenHeight(6.58),
                      left: getScreenWidth(38.41),
                      right: getScreenWidth(28.53)
                    ),
                    child: Container(
                        height: getScreenHeight(249.05),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('${imagePath}bg-app-cloud.png'),
                                fit: BoxFit.fitWidth
                            ))),
                  ),
                  child
                ]
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {

  String text;
  Widget? prefix;
  TextInputType keyboardType;

  CustomTextField({required this.text,  this.prefix, required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: getScreenWidth(7)),
          child: Text(
            text,
            style: TextStyle(
                color: Palette.kTextColor,
                fontSize: getScreenWidth(16),
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.kRegularFamily),
          ),
        ),
        SizedBox(height: getScreenHeight(6)),
        TextField(
            cursorColor: Palette.kTextColor,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              prefixIcon: prefix,
               filled: true,
               fillColor: Palette.kTextFieldColor,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(17)
              ),
            ))
      ],
    );
  }
}

class CustomAuthButton extends StatelessWidget {

  CustomAuthButton({required this.height, required this.width, required this.text, required this.textColor, required this.primary, required this.sideColor, required this.onPressed});
  String text;
  Color textColor;
  Color primary;
  double height;
  double width;
  Color sideColor;
  void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    return SizedBox(
      height: getScreenHeight(height),
      width: getScreenWidth(width),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              fontSize: getScreenWidth(24.3),
              fontWeight: FontWeight.w500,
              color: textColor,
              fontFamily: FontFamily.kMediumFamily
          ),
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.25),
                side: BorderSide(
                    color: sideColor
                )
            )
        ),
      ),
    );
  }
}


class RouteTracker extends StatelessWidget {

  RouteTracker({required this.fill, required this.hover});
  Color fill;
  Color hover;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.37),
      height: getScreenHeight(19),
      width: getScreenWidth(19),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fill
      ),
      child: Container(
        height: getScreenHeight(12),
        width: getScreenWidth(12),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: hover
        ),
      ),
    );
  }
}