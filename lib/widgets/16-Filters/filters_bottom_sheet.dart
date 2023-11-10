import 'package:zenazon/app/utility/consts.dart';

class FiltersBottomSheet extends StatelessWidget {
  const FiltersBottomSheet({
    super.key,
  });
  // ignore: unused_element
  void showSortOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return const FiltersBottomSheet();
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.zero,
          topRight: Radius.zero,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: const [
                // Padding(
                //   //------Gray Line on top of the Sort by text-------
                //   padding: const EdgeInsets.only(top: 10),
                //   child: Container(
                //     height: 5,
                //     width: 50,
                //     decoration: BoxDecoration(
                //       color: Colors.grey,
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //   ),
                // ),
                // const Text(
                //   "Sort by",
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.w500,
                //     color: Colors.black,
                //   ),
                // ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 7.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11.w),
                  child: const Text('Discard'),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    // side: const BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11.w),
                  child: const Text('Apply'),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
