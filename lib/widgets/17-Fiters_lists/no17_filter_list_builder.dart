import 'package:zenazon/app/utility/consts.dart';

// ignore: camel_case_types
class No17_FilterListsBuilter extends StatelessWidget {
  const No17_FilterListsBuilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Isselected isSelectedController = Get.put(Isselected());
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: filterlists.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  if (isSelectedController.selectedlist
                      .contains(filterlists[index])) {
                    isSelectedController.selectedlist
                        .remove(filterlists[index]);
                  } else {
                    isSelectedController.selectedlist.add(filterlists[index]);
                  }
                },
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        child: Text(
                          filterlists[index],
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: isSelectedController.selectedlist
                                    .contains(filterlists[index])
                                ? Colors.red
                                : Colors.black,
                          ),
                        ),
                      ),
                      Icon(
                        isSelectedController.selectedlist
                                .contains(filterlists[index])
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: isSelectedController.selectedlist
                                .contains(filterlists[index])
                            ? Colors.red
                            : Colors.grey,
                      ),
                    ],
                  ),
                ));
          }),
    );
  }
}

class Isselected extends GetxController {
  RxList<String> selectedlist = <String>[].obs;
}
