import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';

import '../../utils/dimensions.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: Dimensions.sizeWidthPercent(20),
          right: Dimensions.sizeWidthPercent(20),
          top: Dimensions.sizeHeightPercent(57),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Dimensions.sizeHeightPercent(2.5),
                        width: Dimensions.sizeWidthPercent(12.5),
                        decoration: BoxDecoration(
                          color: AppColors.primaryBlack,
                          borderRadius: BorderRadius.circular(
                              Dimensions.sizeWidthPercent(7)),
                        ),
                      ),
                      SizedBox(height: Dimensions.sizeHeightPercent(4.5)),
                      Container(
                        height: Dimensions.sizeHeightPercent(2.5),
                        width: Dimensions.sizeWidthPercent(24),
                        decoration: BoxDecoration(
                          color: AppColors.primaryBlack,
                          borderRadius: BorderRadius.circular(
                              Dimensions.sizeWidthPercent(7)),
                        ),
                      ),
                      SizedBox(height: Dimensions.sizeHeightPercent(4.5)),
                      Container(
                        height: Dimensions.sizeHeightPercent(2.5),
                        width: Dimensions.sizeWidthPercent(20),
                        decoration: BoxDecoration(
                          color: AppColors.primaryBlack,
                          borderRadius: BorderRadius.circular(
                              Dimensions.sizeWidthPercent(7)),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Hello, John.',
                    style: GoogleFonts.poppins(
                      fontSize: Dimensions.sizeHeightPercent(24),
                      color: AppColors.primaryBlack,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.sizeHeightPercent(29),
                    width: Dimensions.sizeWidthPercent(29),
                    child: Image.asset(
                      'assets/images/ic-notification.png',
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.sizeHeightPercent(30)),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.sizeWidthPercent(20),
                  vertical: Dimensions.sizeWidthPercent(8),
                ),
                height: Dimensions.sizeHeightPercent(80),
                width: Dimensions.sizeWidthPercent(388),
                decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  image: const DecorationImage(
                      image:
                          AssetImage('assets/images/bg-dashboard-balance.png'),
                      fit: BoxFit.contain,
                      alignment: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Balance',
                          style: GoogleFonts.poppins(
                              color: AppColors.primaryBlack,
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.sizeHeightPercent(15.16)),
                        ),
                        SizedBox(height: Dimensions.sizeHeightPercent(4)),
                        Text(
                          '₦ 50,000',
                          style: GoogleFonts.poppins(
                              color: AppColors.primaryBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: Dimensions.sizeHeightPercent(24)),
                        ),
                      ],
                    ),
                    Container(
                      height: Dimensions.sizeHeightPercent(34),
                      width: Dimensions.sizeWidthPercent(94),
                      margin: EdgeInsets.only(
                        top: Dimensions.sizeHeightPercent(18),
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primaryBlue,
                        borderRadius: BorderRadius.circular(17.47),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Top up',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Dimensions.sizeHeightPercent(12.56),
                                color: AppColors.primaryWhite,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.double_arrow,
                            color: AppColors.primaryWhite,
                            size: Dimensions.sizeHeightPercent(16),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
