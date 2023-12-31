// ignore_for_file: sized_box_for_whitespace

import 'package:zenazon/app/utility/consts.dart';

class No21StarBarPattern extends StatelessWidget {
  const No21StarBarPattern({super.key});

  @override
  Widget build(BuildContext context) {
    int maxrating = 5;
    //== int variable to store total ratings from list
    int totalratings = 0;
    for (int i = 0; i < Ratinglist.length; i++) {
      totalratings += Ratinglist[i];
    }
    double averagerating = totalratings / Ratinglist.length;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ///-----------------Total Ratings  & Average Ratingws-----------------///
        Container(
            // color: Colors.blue.shade50,
            width: 90,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  averagerating.toStringAsFixed(1),
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600, fontSize: 35),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      totalratings.toString(),
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: AppColors.disbaledButtonColor),
                    ),
                    const SizedBox(width: 5),
                    SmallText(
                      'Ratings',
                      color: AppColors.disbaledButtonColor,
                    ),
                  ],
                ),
              ],
            )),

        ///-----------------Rating Bar-----------------///
        Container(
          // color: Colors.yellow.shade50,
          width: 100,
          height: 150,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: Ratinglist.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(
                      Ratinglist[index] >= maxrating
                          ? maxrating
                          : Ratinglist[index],
                      (index) => Icon(
                        Icons.star,
                        color: AppColors.starcolor,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                ],
              );
            },
          ),
        ),

        ///-----------------Rating  RED Bar-----------------///
        Container(
          // color: Colors.green.shade50,
          width: 160,
          height: 150,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: Ratinglist.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: Ratinglist[index] >= maxrating
                              ? 130
                              : Ratinglist[index] * 25,
                          height: 10,
                          decoration: BoxDecoration(
                            color: AppColors.redColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 2),
                ],
              );
            },
          ),
        ),

        ///-----------------Rating Bar-----------------///
        Container(
          // color: Colors.red.shade50,
          width: 20,
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: Ratinglist.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SmallText(Ratinglist[index].toString())],
                  ),
                  const SizedBox(height: 5),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
