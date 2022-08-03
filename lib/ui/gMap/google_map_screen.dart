import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/app_colors.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/text_styles.dart';
import 'package:mobile_assessment_flutter/ui/gMap/widgets/column_check_box.dart';
import 'package:mobile_assessment_flutter/ui/gMap/widgets/column_dotted_line.dart';
import 'package:mobile_assessment_flutter/ui/gMap/widgets/column_track_circle.dart';
import 'package:mobile_assessment_flutter/ui/gMap/widgets/column_track_text.dart';
import 'package:mobile_assessment_flutter/ui/gMap/widgets/track_circle.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  static const _initialCamPos = CameraPosition(target: LatLng(11.9883259, 8.4820171),
    zoom: 16,
  );
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      SlidingUpPanel(
        color: Colors.transparent,
        backdropColor: Colors.transparent,
        body:
        Stack(
          children:[ const GoogleMap(
            initialCameraPosition: _initialCamPos,
            zoomControlsEnabled: false,
          ),
            SafeArea(
              child:
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 50.0.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40.0.h,
                          width: 40.0.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.circular(13.0.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 0.01,
                                offset: const Offset(0.5, 0.5),
                                blurRadius: 0.05
                              ),
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0.01,
                                  offset: const Offset(-0.5, -0.5),
                                  blurRadius: 0.05
                              ),
                            ],

                          ),
                          child: InkWell(
                            onTap: Navigator.of(context).pop,
                            child: const
                            Center(
                              child: Icon(
                                Icons.arrow_back
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0,),
                        Container(
                          height: 40.0.h,
                          width: 250.0.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13.0.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0.01,
                                  offset: const Offset(0.5, 0.5),
                                  blurRadius: 0.05
                              ),
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0.01,
                                  offset: const Offset(-0.5, -0.5),
                                  blurRadius: 0.05
                              ),
                            ],
                          ),
                          child:
                          Center(child:
                          TextFormField(
                            initialValue: "HH-INT-D9FD00-JBW-ORI",
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 40.0),
                             hintText: "HH-INT-D9FD00-JBW-ORI",
                              border: InputBorder.none,
                              hintStyle:GoogleFonts.inter(color: Colors.black54,),
                            ),
                            keyboardType: TextInputType.text,
                            style: GoogleFonts.inter(color: Colors.black,),
                            onChanged: (value){
                            },

                          )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
        ]
        ),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
        ),
      ),
    );
  }
}


class PanelWidget extends StatelessWidget {
  final ScrollController controller;
   PanelWidget({Key? key,
     required this.controller
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(40.0,), topLeft:  Radius.circular(40.0))
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: AppColors.primaryGreen,
              ),
              child: Padding(
                padding:  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("pickup",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0),),
                          Text("Jibowo Terminal",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0)),
                          Text("Abuja Terminal",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0)),
                          Text("collected",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0)),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                        const RowTrackCircleWidget(),
                          Container(height:3.0, color: Colors.white,width: 95.0,),
                        const RowTrackCircleWidget(),
                          const DottedLine(dashColor: Colors.white,lineLength: 95.0,),
                        const RowTrackCircleWidget(),
                        const DottedLine(dashColor: Colors.white,lineLength: 95.0,),
                        const RowTrackCircleWidget(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("04 Mar, 2022",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0),),
                          Text("05 Mar, 2022",style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10.0)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0,),

            Padding(
              padding:  const EdgeInsets.only(left: 10.0),
              child: Text("Route Details",style: AppTextStyle.kSemiBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),),
            ),
            const ColumnTrackWidget()
          ],
        ),
      ),
    );
  }
}

class ColumnTrackWidget extends StatelessWidget {
  const ColumnTrackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
            ColumnTrackCircle(),
             ColumnDottedLines(),
             ColumnTrackCircle(),
             ColumnDottedLines(),
             ColumnTrackCircle(),
             ColumnDottedLines(),
             ColumnTrackCircle(),
          ],
        ),
        const SizedBox(width: 20.0,),
        Column(
          children: const[
             ColumnTrackText(),
             SizedBox(height: 38.0,),
             ColumnTrackText(),
             SizedBox(height: 38.0,),
             ColumnTrackText(),
             SizedBox(height: 38.0,),
             ColumnTrackText(),
          ],
        ),

        const SizedBox(width: 110.0,),
        Column(
          children: const [
            ColumnCheckBox(),
            SizedBox(height: 32.0,),
            ColumnCheckBox(),
             SizedBox(height: 32.0,),
            ColumnCheckBox(),
             SizedBox(height: 32.0,),
            ColumnCheckBox(),
          ],
        )
      ],
    );
  }
}





