import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/constants/re_usable.dart';
import 'package:mobile_assessment_flutter/utils/size_layout.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/font_family.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    return Scaffold(
      backgroundColor: Color(0xffF8F8FA),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  getScreenWidth(8),
                  getScreenHeight(57),
                  getScreenWidth(20),
                  getScreenHeight(163)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('${imagePath}Hamburger menu.png'),
                      Text(
                        'Hello, John.',
                        style: TextStyle(
                            color: Palette.kBlackColor,
                            fontSize: getScreenWidth(24),
                            fontFamily: FontFamily.kSemiBoldFamily,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                          height: getScreenHeight(29),
                          width: getScreenWidth(29),
                          child:
                              Image.asset('${imagePath}ic-notification.png')),
                    ],
                  ),
                  SizedBox(
                    height: getScreenHeight(30),
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    height: getScreenHeight(80),
                    padding: EdgeInsets.only(
                       left: getScreenWidth(28),
                       top: getScreenHeight(14),
                       right: getScreenWidth(18),
                        ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              '${imagePath}bg-dashboard-balance.png'),
                          alignment: Alignment.bottomRight),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Balance',
                          style: TextStyle(
                              color: Palette.kBlackColor,
                              fontSize: getScreenWidth(15.16),
                              fontFamily: FontFamily.kRegularFamily,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: getScreenHeight(4),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '₦ 50,000',
                              style: TextStyle(
                                  color: Palette.kBlackColor,
                                  fontSize: getScreenHeight(24),
                                  fontFamily: FontFamily.kSemiBoldFamily,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: getScreenHeight(34),
                                width: getScreenWidth(94),
                                decoration: BoxDecoration(
                                    color: Palette.kPrimaryColor,
                                    borderRadius: BorderRadius.circular(17.47)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Top up ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: getScreenWidth(12.56),
                                          fontFamily: FontFamily.kMediumFamily,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Icon(
                                      Icons.double_arrow,
                                      color: Colors.white,
                                      size: getScreenWidth(20),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(30),
                  ),
                  Container(
                    height: getScreenHeight(136),
                    padding: EdgeInsets.only(
                        left: getScreenWidth(39),
                       top: getScreenHeight(23),
                       right: getScreenWidth(29),),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Palette.kTextFieldColor),
                    child: Column(
                      children: [
                        Text(
                          'Track your waybill',
                          style: TextStyle(
                              color: Palette.kBlackColor,
                              fontSize: getScreenWidth(20),
                              fontFamily: FontFamily.kSemiBoldFamily,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: getScreenHeight(16),
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          padding: EdgeInsets.only(
                            left: getScreenWidth(15),
                            right: getScreenWidth(3),
                          ),
                          height: getScreenHeight(44),
                          decoration: BoxDecoration(
                              color: Palette.kTextFieldColor,
                              borderRadius: BorderRadius.circular(17),
                              border: Border.all(color: Color(0x9946A5BA))),
                          child: Row(
                            children: [
                              SizedBox(
                                  height: getScreenHeight(14.26),
                                  width: getScreenWidth(14.26),
                                  child:
                                      Image.asset('${imagePath}ic-search.png')),
                              SizedBox(
                                width: getScreenWidth(9.51),
                              ),
                              SizedBox(
                                height: getScreenHeight(44),
                                width: getScreenWidth(150),
                                child: TextField(
                                  cursorColor: Palette.kTextColor,
                                  decoration: InputDecoration(
                                      // contentPadding: EdgeInsets.all(),
                                      hintText: 'Waybill Number',
                                      hintStyle: TextStyle(
                                          color: Palette.kSearchColor,
                                          fontSize: getScreenWidth(15.21),
                                          fontFamily: FontFamily.kLightFamily,
                                          fontWeight: FontWeight.w300),
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: (){
                                  Get.toNamed('/trackScreen');
                                },
                                child: Container(
                                  height: getScreenHeight(38),
                                  width: getScreenWidth(81),
                                 decoration: BoxDecoration(
                                   color: Palette.kPrimaryColor,
                                   borderRadius: BorderRadius.circular(14),
                                 ),
                                  child: Center(
                                    child: Text(
                                      'Track',
                                      style: TextStyle(
                                          fontSize: getScreenWidth(16),
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontFamily: FontFamily.kRegularFamily),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getScreenHeight(30),
                  ),
                  Text(
                    'Send a Package',
                    style: TextStyle(
                        color: Palette.kBlackColor,
                        fontSize: getScreenWidth(24),
                        fontFamily: FontFamily.kMediumFamily,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: getScreenHeight(13),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: getScreenHeight(242),
                        width: getScreenWidth(186),
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(
                            top: getScreenHeight(42),
                            right: getScreenWidth(9.41),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.09),
                            color: const Color(0xffFDFEFF),
                            image: DecorationImage(
                                image: AssetImage(
                                    '${imagePath}ic-road-same-state.png'),
                                alignment: Alignment.bottomCenter)),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getScreenWidth(9.41)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Same State',
                                        style: TextStyle(
                                            color: Palette.kBlackColor,
                                            fontSize: getScreenWidth(18.14),
                                            fontFamily:
                                                FontFamily.kSemiBoldFamily,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: getScreenHeight(5.64),
                                      ),
                                      Container(
                                        width: getScreenWidth(18.75),
                                        height: getScreenHeight(3.13),
                                        decoration: BoxDecoration(
                                            color: Palette.kPrimaryColor,
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                      ),
                                      SizedBox(
                                        height: getScreenHeight(7.38),
                                      ),
                                      Text(
                                        'Deliveries within the\nsame state',
                                        style: TextStyle(
                                            color: Palette.kBlackColor,
                                            fontSize: getScreenWidth(15.12),
                                            fontFamily: FontFamily.kLightFamily,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getScreenHeight(4.98),
                                ),
                                SizedBox(
                                    height: getScreenHeight(104.07),
                                    width: getScreenWidth(114.45),
                                    child: Image.asset(
                                      '${imagePath}ic-bike.png',
                                      fit: BoxFit.fill,
                                    )),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: getScreenHeight(21.34)),
                                child: Container(
                                  height: getScreenHeight(23.18),
                                  width: getScreenWidth(23.18),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFBFCFD),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: getScreenWidth(7.14),
                                    color: Palette.kBlackColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getScreenHeight(242),
                        width: getScreenWidth(186),
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(
                            top: getScreenHeight(18.14),
                            ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.09),
                            color: const Color(0xffFDFEFF),
                            image: DecorationImage(
                                image: AssetImage(
                                    '${imagePath}ic-road-interstate.png'),
                                alignment: Alignment.bottomCenter)),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: getScreenWidth(197.02),
                                  child: Image.asset(
                                    '${imagePath}ic-curve.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getScreenWidth(9.41)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Interstate',
                                        style: TextStyle(
                                            color: Palette.kBlackColor,
                                            fontSize: getScreenWidth(18.14),
                                            fontFamily:
                                                FontFamily.kSemiBoldFamily,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: getScreenHeight(5.64),
                                      ),
                                      Container(
                                        width: getScreenWidth(18.75),
                                        height: getScreenHeight(3.13),
                                        decoration: BoxDecoration(
                                            color: Palette.kPrimaryColor,
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                      ),
                                      SizedBox(
                                        height: getScreenHeight(7.38),
                                      ),
                                      Text(
                                        'Deliveries outside\nyour current state',
                                        style: TextStyle(
                                            color: Palette.kBlackColor,
                                            fontSize: getScreenWidth(15.12),
                                            fontFamily: FontFamily.kLightFamily,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getScreenHeight(104.07),
                                  width: getScreenWidth(125.45),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                        '${imagePath}Delivery Van.png'),
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    fit: BoxFit.cover,
                                  )),
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: getScreenHeight(16.34),
                                    right: getScreenWidth(9.41)),
                                child: Container(
                                  height: getScreenHeight(23.18),
                                  width: getScreenWidth(23.18),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFBFCFD),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: getScreenWidth(7.14),
                                    color: Palette.kBlackColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getScreenHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: getScreenHeight(242),
                        width: getScreenWidth(186),
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(
                            top: getScreenHeight(18.14),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.09),
                            color: const Color(0xffFDFEFF),
                            image: DecorationImage(
                                image: AssetImage(
                                    '${imagePath}ic-road-charter.png'),
                                alignment: Alignment.bottomCenter)),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: getScreenWidth(186),
                                  child: Image.asset(
                                    '${imagePath}ic-curve.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getScreenWidth(9.41)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Charter',
                                        style: TextStyle(
                                            color: Palette.kBlackColor,
                                            fontSize: getScreenWidth(18.14),
                                            fontFamily:
                                                FontFamily.kSemiBoldFamily,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: getScreenHeight(5.64),
                                      ),
                                      Container(
                                        width: getScreenWidth(18.75),
                                        height: getScreenHeight(3.13),
                                        decoration: BoxDecoration(
                                            color: Palette.kPrimaryColor,
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                      ),
                                      SizedBox(
                                        height: getScreenHeight(7.38),
                                      ),
                                      Text(
                                        'Request a vehicle',
                                        style: TextStyle(
                                            color: Palette.kBlackColor,
                                            fontSize: getScreenWidth(15.12),
                                            fontFamily: FontFamily.kLightFamily,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  height: getScreenHeight(124.56),
                                  width: getScreenWidth(130.81),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        AssetImage('${imagePath}ic-truck.png'),
                                    alignment: AlignmentDirectional.bottomStart,
                                    fit: BoxFit.contain,
                                  )),
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: getScreenWidth(9.41),
                                  bottom: getScreenHeight(16.34),
                                ),
                                child: Container(
                                  height: getScreenHeight(23.18),
                                  width: getScreenWidth(23.18),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFBFCFD),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: getScreenWidth(7.14),
                                    color: Palette.kBlackColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(children: [
                        Container(
                          height: getScreenHeight(242),
                          width: getScreenWidth(186),
                          alignment: AlignmentDirectional.centerStart,
                          padding: EdgeInsets.only(
                              top: getScreenHeight(42),
                              right: getScreenWidth(9.41),
                              ),
                          foregroundDecoration: BoxDecoration(
                            backgroundBlendMode: BlendMode.lighten,
                            color: Color(0x38F3F4F5),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.09),
                            color: Color(0xffF3F4F5),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: getScreenWidth(9.41)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'International',
                                          style: TextStyle(
                                              color: Palette.kBlackColor,
                                              fontSize: getScreenWidth(18.14),
                                              fontFamily:
                                                  FontFamily.kSemiBoldFamily,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: getScreenHeight(5.64),
                                        ),
                                        Container(
                                          width: getScreenWidth(18.75),
                                          height: getScreenHeight(3.13),
                                          decoration: BoxDecoration(
                                              color: Palette.kPrimaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                        ),
                                        SizedBox(
                                          height: getScreenHeight(7.38),
                                        ),
                                        Text(
                                          'Send packages to\nother countries',
                                          style: TextStyle(
                                              color: Palette.kBlackColor,
                                              fontSize: getScreenWidth(15.12),
                                              fontFamily:
                                                  FontFamily.kLightFamily,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: getScreenHeight(4.98),
                                  ),
                                  SizedBox(
                                      height: getScreenHeight(104.07),
                                      width: getScreenWidth(114.45),
                                      child: Image.asset(
                                        '${imagePath}ic-aeroplane.png',
                                        fit: BoxFit.fill,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getScreenHeight(242),
                          width: getScreenWidth(186),
                          alignment: AlignmentDirectional.centerStart,
                          padding: EdgeInsets.only(
                              top: getScreenHeight(42),
                              right: getScreenWidth(9.41),
                              bottom: getScreenHeight(11.34)),
                          foregroundDecoration: BoxDecoration(
                            color: Color(0x38F3F4F5),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11.09),
                              color: Color(0x98F3F4F5)),
                          child: Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: getScreenHeight(21.86)),
                              child: Container(
                                  height: getScreenHeight(18.14),
                                  width: getScreenWidth(75.58),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFDFEFF),
                                      borderRadius:
                                          BorderRadius.circular(9.18)),
                                  child: Center(
                                    child: Text(
                                      'Coming Soon',
                                      style: TextStyle(
                                          fontSize: getScreenWidth(9.07),
                                          color: Palette.kBlackColor,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: FontFamily.kMediumFamily),
                                    ),
                                  )),
                            ),
                          ),
                        )
                      ])
                    ],
                  ),
                  SizedBox(
                    height: getScreenHeight(30),
                  ),
                  Text(
                    'Other Actions',
                    style: TextStyle(
                        color: Palette.kBlackColor,
                        fontSize: getScreenWidth(24),
                        fontFamily: FontFamily.kMediumFamily,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: getScreenHeight(7),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: getScreenHeight(143),
                        width: getScreenWidth(186),
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(
                            top: getScreenHeight(26),
                            right: getScreenWidth(9.41),
                            left: getScreenWidth(13.1),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.09),
                          color: const Color(0xffFDFEFF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: getScreenWidth(9.41)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Waybill History',
                                    style: TextStyle(
                                        color: Palette.kBlackColor,
                                        fontSize: getScreenWidth(18.14),
                                        fontFamily: FontFamily.kSemiBoldFamily,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: getScreenHeight(5.64),
                                  ),
                                  Container(
                                    width: getScreenWidth(18.75),
                                    height: getScreenHeight(3.13),
                                    decoration: BoxDecoration(
                                        color: Palette.kPrimaryColor,
                                        borderRadius: BorderRadius.circular(2)),
                                  ),
                                  SizedBox(
                                    height: getScreenHeight(7.38),
                                  ),
                                  Text(
                                    'Records of all your\nwaybills.',
                                    style: TextStyle(
                                        color: Palette.kBlackColor,
                                        fontSize: getScreenWidth(15.12),
                                        fontFamily: FontFamily.kLightFamily,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height: getScreenHeight(23.18),
                                      width: getScreenWidth(23.18),
                                      decoration: BoxDecoration(
                                          color: Palette.kBlackColor,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        size: getScreenWidth(7.14),
                                        color: Palette.kWhiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getScreenHeight(143),
                        width: getScreenWidth(186),
                        alignment: AlignmentDirectional.centerStart,
                        padding: EdgeInsets.only(
                            top: getScreenHeight(26),
                            right: getScreenWidth(9.41),
                            left: getScreenWidth(13.1),
                            ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.09),
                          color: const Color(0xffFDFEFF),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: getScreenWidth(9.41)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Get Help',
                                    style: TextStyle(
                                        color: Palette.kBlackColor,
                                        fontSize: getScreenWidth(18.14),
                                        fontFamily: FontFamily.kSemiBoldFamily,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: getScreenHeight(5.64),
                                  ),
                                  Container(
                                    width: getScreenWidth(18.75),
                                    height: getScreenHeight(3.13),
                                    decoration: BoxDecoration(
                                        color: Palette.kPrimaryColor,
                                        borderRadius: BorderRadius.circular(2)),
                                  ),
                                  SizedBox(
                                    height: getScreenHeight(7.38),
                                  ),
                                  Text(
                                    'Get help & support from our team',
                                    style: TextStyle(
                                        color: Palette.kBlackColor,
                                        fontSize: getScreenWidth(15.12),
                                        fontFamily: FontFamily.kLightFamily,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height: getScreenHeight(23.18),
                                      width: getScreenWidth(23.18),
                                      decoration: BoxDecoration(
                                          color: Palette.kBlackColor,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        size: getScreenWidth(7.14),
                                        color: Palette.kWhiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
