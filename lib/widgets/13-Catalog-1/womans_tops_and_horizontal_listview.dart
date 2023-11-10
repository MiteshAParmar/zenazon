import 'package:zenazon/app/utility/consts.dart';

import '../../app/utility/lists.dart';

class Catalog1WomansTopAndHorizontalListView extends StatelessWidget {
  const Catalog1WomansTopAndHorizontalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Woman's tops",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              fontSize: 24.dp,
              color: AppColors.blackColor),
        ),
        SizedBox(
          height: 5.dp,
        ),
        SizedBox(
          width: double.infinity,
          height: 4.h,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemCount: catalog1_woman_tops_list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.dp, vertical: 5.dp),
                  child: Text(
                    catalog1_woman_tops_list[index],
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.dp,
                        color: AppColors.whiteColor),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
