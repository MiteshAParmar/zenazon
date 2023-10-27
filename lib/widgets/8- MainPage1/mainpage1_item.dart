import 'package:zenazon/app/utility/consts.dart';

class MainPage1Item extends StatelessWidget {
  final String imagepath;
  final String price;
  final String itemname;

  const MainPage1Item({
    super.key,
    required this.imagepath,
    required this.price,
    required this.itemname,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.dp, right: 10.dp),
      child: Stack(
        children: [
          Container(
            width: 150.dp,
            height: 350.dp,
            decoration: BoxDecoration(
              color: AppColors.dividerColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.dp),
                bottomRight: Radius.circular(15.dp),
                topRight: Radius.circular(15.dp),
                bottomLeft: Radius.circular(15.dp),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.dp),
                    bottomRight: Radius.circular(15.dp),
                    topRight: Radius.circular(15.dp),
                    bottomLeft: Radius.circular(15.dp),
                  ),
                  child: Image(
                    image: AssetImage(imagepath), ////-----------ITEM IMAGE HERE

                    width: 150.dp,
                    height: 250.dp,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 5.dp,
                ),

                ///----------------------STAR RATING----------------------
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star_border_sharp, size: 14.dp),
                          Icon(Icons.star_border_sharp, size: 14.dp),
                          Icon(Icons.star_border_sharp, size: 14.dp),
                          Icon(Icons.star_border_sharp, size: 14.dp),
                          Icon(Icons.star_border_sharp, size: 14.dp),
                        ],
                      ),
                      SizedBox(
                        height: 5.dp,
                      ),
                      Text(
                        overflow: TextOverflow.ellipsis,
                        itemname, ////-----------ITEM NAME HERE
                        style: TextStyle(
                          fontSize: 16.dp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5.dp,
                      ),
                      Text(
                        'Price: $price\$', ////-----------ITEM PRICE HERE
                        style: TextStyle(
                          fontSize: 16.dp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          ///-------------Circle on bottom with Favourite ICON
          Positioned(
            top: 235.dp,
            right: 10.dp,
            child: Container(
              width: 30.dp,
              height: 30.dp,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25.dp)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1.dp,
                    blurRadius: 2.dp,
                    offset: Offset(0, 3.dp), // changes position of shadow
                  ),
                ],
              ),
              child: Icon(
                Icons.favorite_border,
                size: 15.dp,
              ),
            ),
          ),
          //-----black button on top - NEW
          Container(
              decoration: BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.dp),
                      bottomRight: Radius.circular(15.dp))),
              child: Padding(
                padding: EdgeInsets.all(4.dp),
                child: Text('New',
                    style: TextStyle(color: Colors.white, fontSize: 15.dp)),
              ))
        ],
      ),
    );
  }
}
