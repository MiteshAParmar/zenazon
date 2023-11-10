// import '../../app/utility/consts.dart';
// import '../../app/utility/lists.dart';
// import 'catalog1_tile.dart';

// Catagog1ListViewBuilder() {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     // crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Padding(
//         padding: EdgeInsets.only(left: 2.w, right: 3.w),
//         child: SizedBox(
//           height: 80.h,
//           child: ListView.separated(
//               scrollDirection: Axis.vertical,
//               itemBuilder: (context, index) {
//                 return Catalog1Tile(
//                   itemname: catalog1_itemlist[index]['itemname'].toString(),
//                   brandname: catalog1_itemlist[index]['brand'].toString(),
//                   price: catalog1_itemlist[index]['price'].toString(),
//                   image: catalog1_itemlist[index]['image'].toString(),
//                   rating:
//                       int.parse(catalog1_itemlist[index]['rating'].toString()),
//                 );
//               },
//               separatorBuilder: (context, index) {
//                 return SizedBox(height: .5.h);
//               },
//               itemCount: catalog1_itemlist.length),
//         ),
//       ),
//     ],
//   );
// }

