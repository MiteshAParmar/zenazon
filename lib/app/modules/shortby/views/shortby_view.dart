import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'package:get/get.dart';
import 'package:zenazon/widgets/13-Catalog-1/Catalog1FilterIconAndPriceHighToLow_Strip.dart';
import 'package:zenazon/widgets/13-Catalog-1/womans_tops_and_horizontal_listview.dart';
import 'package:zenazon/widgets/14-catalog-2/catalog2_gridview_builder.dart';
import 'package:zenazon/widgets/bottom_nav_bar.dart';

import '../../../utility/consts.dart';
import '../controllers/shortby_controller.dart';

class ShortbyView extends GetView<ShortbyController> {
  const ShortbyView({Key? key}) : super(key: key);
  void _showSortOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Wrap(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 5.dp,
                        width: 50.dp,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Text(
                      "Sort by",
                      style: GoogleFonts.montserrat(
                        fontSize: 20
                            .dp, // Make sure you have extension method for 'dp'
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            ListTile(
              title: const Text('Popular'),
              onTap: () => {},
            ),
            ListTile(
              title: const Text('Newest'),
              onTap: () => {},
            ),
            ListTile(
              title: const Text('Customer review'),
              onTap: () => {},
            ),
            ListTile(
              enabled: true,
              tileColor: Colors.red,
              title: const Text(
                'Price:Lowest to high',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => {},
            ),
            ListTile(
              title: const Text('Price:Highest to low'),
              onTap: () => {},
            ),
            // ... Add more list tiles for other options
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Women's Tops",
          style: GoogleFonts.montserrat(
              fontSize: 20.dp,
              color: AppColors.blackColor,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => _showSortOptions(context),
            icon: const Icon(
                Icons.sort), // Changed to sort icon for better context
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
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
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
