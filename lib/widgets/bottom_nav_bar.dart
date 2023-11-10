import 'package:zenazon/app/utility/consts.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
