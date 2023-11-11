// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TempWidgetsController extends GetxController {
  var values = const RangeValues(70, 150).obs;
  RxList<String> selectedSizes = <String>[].obs;
}
