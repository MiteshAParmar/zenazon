import 'package:zenazon/app/utility/consts.dart';

import 'package:zenazon/widgets/11-catagories/kids_tab.dart';
import 'package:zenazon/widgets/11-catagories/mans_tab.dart';
import 'package:zenazon/widgets/11-catagories/woman_tab.dart';

import '../../../../widgets/11-catagories/customTabBar.dart';
import '../../../../widgets/bottom_nav_bar.dart';
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
          backgroundColor: AppColors.scaffoldbg,
          appBar: AppBar(
            backgroundColor: AppColors.scaffoldbg,
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
          bottomNavigationBar: const BottomNavBar(),
        ),
      ),
    );
  }
}
