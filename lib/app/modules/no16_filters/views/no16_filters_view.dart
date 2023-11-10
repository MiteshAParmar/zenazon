import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zenazon/widgets/16-Filters/filters_brand_strip.dart';
import 'package:zenazon/widgets/16-Filters/filters_catagory_strip.dart';

import 'package:zenazon/widgets/16-Filters/filters_sizes_strip.dart';
import 'package:zenazon/widgets/16-Filters/filters_range_slider.dart';
import 'package:zenazon/widgets/16-Filters/filters_rounded_button_listview.dart';
import 'package:zenazon/widgets/bottom_nav_bar.dart';

import '../../../../widgets/16-Filters/filters_bottom_sheet.dart';
import '../controllers/no16_filters_controller.dart';

class No16FiltersView extends GetView<No16FiltersController> {
  FiltersBottomSheet filtersBottomSheet = const FiltersBottomSheet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
        actions: [
          IconButton(
            onPressed: () {
              filtersBottomSheet.showSortOptions(
                  context); //---Custom Bottom Sheet is called here
            },
            icon: const Icon(Icons.sort),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const FilterRangeSlider(),
              const FiltersRoundedButtonListViewBuilder(),
              FilterSizeStrip(),
              const FilterCatagoryStrip(),
              const FilterBrandStrip(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
