import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/app/utility/lists.dart';
import 'package:zenazon/widgets/13-Catalog-1/Catalog1FilterIconAndPriceHighToLow_Strip.dart';
import 'package:zenazon/widgets/13-Catalog-1/womans_tops_and_horizontal_listview.dart';
import 'package:zenazon/widgets/14-catalog-2/catalog2_gridview_builder.dart';
import 'package:zenazon/widgets/18-Select%20Size/no18_bottomsheet.dart';
import 'package:zenazon/widgets/bottom_nav_bar.dart';

import '../controllers/no18_selectsize_controller.dart';

// ignore: must_be_immutable
class No18SelectsizeView extends GetView<No18SelectsizeController> {
  // ignore: prefer_const_constructors_in_immutables
  No18SelectsizeView({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    Get.put(No18Sizecontroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Women's tops"),
        actions: [
          IconButton(
            onPressed: () {
              No18BottomSheet().showSortOptions(context);
            },
            icon: const Icon(Icons.sort),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Catalog1WomansTopAndHorizontalListView(),
              SizedBox(
                height: 10.dp,
              ),
              const Catalog1FilterIconAndPriceHighToLowStrip(),
              SizedBox(
                height: 10.dp,
              ),
              const Catalog2GridViewItemBuilder(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
