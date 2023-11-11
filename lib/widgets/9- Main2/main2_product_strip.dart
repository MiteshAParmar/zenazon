import 'package:zenazon/app/utility/consts.dart';

import 'main2_product_card.dart';

class Main2PproductStrip extends StatelessWidget {
  const Main2PproductStrip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductCard(
              rating: 3,
              itemCategory: 'Dorothy Perkins',
              itemName: 'Trousers',
              actualPrice: '250',
              discountedPrice: '400',
              itemImage: 'assets/images/main2_sports_dress.png'),
          ProductCard(
              rating: 5,
              itemCategory: 'Dorothy Perkins',
              itemName: 'Evening Dress',
              actualPrice: '500',
              discountedPrice: '900',
              itemImage: 'assets/images/main2_sports_dress.png'),
          ProductCard(
              rating: 2,
              itemCategory: 'Dorothy Perkins',
              itemName: 'Evening Dress',
              actualPrice: '15',
              discountedPrice: '12',
              itemImage: 'assets/images/main2_sports_dress.png'),
          ProductCard(
              rating: 1,
              itemCategory: 'Dorothy Perkins',
              itemName: 'Evening Dress',
              actualPrice: '15',
              discountedPrice: '12',
              itemImage: 'assets/images/mainpage1_eveningdress.png'),
          ProductCard(
              rating: 0,
              itemCategory: 'Dorothy Perkins',
              itemName: 'Evening Dress',
              actualPrice: '15',
              discountedPrice: '12',
              itemImage: 'assets/images/main2_sports_dress.png'),
        ],
      ),
    );
  }
}
