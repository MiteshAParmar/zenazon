// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/8-%20MainPage1/mainpage1_bottom_item_strip.dart';

import '../../../../widgets/8- MainPage1/mainpage1_banner.dart';
import '../controllers/mainpage_1_controller.dart';

class Mainpage1View extends GetView<Mainpage1Controller> {
  const Mainpage1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Mainpage1Banner(),
            SizedBox(height: 10.dp),
            Padding(
              padding: EdgeInsets.only(left: 2.h, right: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('New',
                          style: GoogleFonts.montserrat(
                            fontSize: 25.dp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(height: 2.dp),
                      Text("You've never seen it before!",
                          style: GoogleFonts.montserrat(
                            fontSize: 12.dp,
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(height: 10.dp),
                    ],
                  ),
                  Text('View all',
                      style: GoogleFonts.montserrat(
                        fontSize: 12.dp,
                        color: AppColors.redColor,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ),
            Mainpage1BottomItemStrip(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: AppColors.redColor,
        unselectedItemColor: AppColors.blackColor,
        selectedFontSize: 12.dp,
        unselectedFontSize: 12.dp,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
