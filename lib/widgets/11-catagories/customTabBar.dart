// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:zenazon/app/utility/consts.dart';

class CustomTabBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final TabController? controller;
  final double height;

  const CustomTabBarWidget(
      {super.key, this.controller, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: TabBar(
        // padding: EdgeInsets.only(top: 10.dp),
        // physics: AlwaysScrollableScrollPhysics(),
        labelPadding: EdgeInsets.symmetric(horizontal: 30.dp),

        unselectedLabelColor: AppColors.blackColor,
        labelColor: AppColors.redColor,
        labelStyle: GoogleFonts.montserrat(
          fontSize: 15.dp,
          fontWeight: FontWeight.w500,
        ),
        indicatorColor: AppColors.redColor,
        isScrollable: true,
        controller: controller,
        tabs: [
          Tab(text: "Woman"),
          Tab(text: "Man"),
          Tab(text: "Kids"),
        ],
      ),
    );
  }
}
