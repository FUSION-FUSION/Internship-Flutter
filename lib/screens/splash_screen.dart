import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/utils/constants/colors.dart';
import 'package:mobile_assessment_flutter/utils/constants/re_usable.dart';
import 'package:mobile_assessment_flutter/utils/size_layout.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation _animation;
  bool loaded = false;

  @override
  void initState(){
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
        vsync: this,
      duration: Duration(seconds: 5)
    );

    _animation = CurvedAnimation(parent: _animationController, curve: Curves.easeOut);

    _animationController.forward();

    _animation.addListener(() {
      setState(() {

      });
    });


    Timer(const Duration(seconds: 6), (){
      loaded = true;
      Timer(const Duration(milliseconds: 200), ()=> Get.offAndToNamed('/getStartedScreen'));
    }

    );


  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    _animation.removeListener(() { });
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    return Scaffold(
      backgroundColor: Palette.kBlackColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getScreenWidth(108)),
        child: Center(
          child: SizedBox(
            height: _animation.value * 200,
              child: loaded ? null : Image.asset('${imagePath}splash_logo.png')) ,
        ),
      ),
    );
  }
}
