import 'package:zenazon/app/utility/consts.dart';
import 'package:get/get.dart';
import 'package:zenazon/widgets/11-catagories/kids_tab.dart';
import 'package:zenazon/widgets/11-catagories/mans_tab.dart';
import 'package:zenazon/widgets/11-catagories/woman_tab.dart';

import '../../../../widgets/11-catagories/customTabBar.dart';
import '../controllers/catatories_controller.dart';

class CatatoriesView extends GetView<CatatoriesController> {
  const CatatoriesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.whiteColor,
            title: Text(
              'Categories',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: AppColors.blackColor,
              ),
            ),
            bottom: const CustomTabBarWidget(), // Use the custom widget here
          ),
          body: const TabBarView(
            children: [
              WomanTab(),
              MansTab(),
              KidsTab(),
            ],
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
                  Icons.person_outline_outlined,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
