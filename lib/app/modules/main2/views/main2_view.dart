// ignore_for_file: prefer_const_constructors, unused_import

import 'package:get/get.dart';
import 'package:zenazon/widgets/8-%20MainPage1/mainpage1_bottom_item_strip.dart';
import 'package:zenazon/widgets/9-%20Main2/main2_product_card.dart';
import 'package:zenazon/widgets/9-%20Main2/main2_product_strip.dart';

import '../../../utility/consts.dart';
import '../controllers/main2_controller.dart';

class Main2View extends GetView<Main2Controller> {
  const Main2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text('Main2View'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //---- BANNER IMAGE -----
            const Image(
              width: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/main2_cover.png'),
            ),
            SizedBox(height: 3.h),
            //------SALE & SUPER SUMMER SALE  - VIEW ALL  -----
            Padding(
              padding: EdgeInsets.only(left: 2.w, right: 2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sale',
                        style: GoogleFonts.montserrat(
                            fontSize: 35.dp, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 2),
                      Text('Super summer sale',
                          style: GoogleFonts.montserrat(
                              fontSize: 15.dp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.bodyContentColor)),
                    ],
                  ),
                  Text('view all',
                      style: GoogleFonts.montserrat(
                          fontSize: 15.dp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.bodyContentColor)),
                ],
              ),
            ),
            SizedBox(height: 3.h),
            //------PRODUCTS listview -----
            const Main2PproductStrip(),
            SizedBox(height: 3.h),
            //------NEW ARRIVALS  - VIEW ALL  -----
            Mainpage1BottomItemStrip(),
            SizedBox(height: 3.h),
            const Main2PproductStrip(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: AppColors.whiteColor,
        selectedItemColor: AppColors.redColor,
        unselectedItemColor: AppColors.blackColor,
        selectedFontSize: 12.dp,
        unselectedFontSize: 10.dp,
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
