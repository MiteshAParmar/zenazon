import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/app/utility/lists.dart';
import 'package:zenazon/widgets/1%20-Signup%20&%20Login%20page/red_button.dart';
import 'package:zenazon/widgets/bottom_nav_bar.dart';

import '../../../../widgets/12- Catagories -2/choose_catagories_listview_builder.dart';
import '../controllers/catagories2_controller.dart';

class Catagories2View extends GetView<Catagories2Controller> {
  const Catagories2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catagories',
          style: GoogleFonts.montserrat(
              color: AppColors.blackColor,
              fontWeight: FontWeight.w600,
              fontSize: 20.dp),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: AppColors.blackColor,
              size: 30.dp,
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const RedButton(title: 'VIEW ALL ITEMS'),
              SizedBox(
                height: 20.dp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Catagories',
                    style: GoogleFonts.montserrat(
                        color: AppColors.disbaledButtonColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.dp),
                  ),
                ],
              ),
              SizedBox(
                height: 20.dp,
              ),
              const Catavory2ListViewBuilder(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
