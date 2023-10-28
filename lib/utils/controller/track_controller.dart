import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';

class TrackController extends GetxController{
  GlobalKey<ExpandableBottomSheetState> key = GlobalKey<ExpandableBottomSheetState>();
  var contractedStatus = ExpansionStatus.contracted.obs;
  var expandedStatus = ExpansionStatus.expanded.obs;
  RxBool checked1 = false.obs;
  RxBool checked2 = false.obs;
  RxBool checked3 = false.obs;
  RxBool checked4 = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

}