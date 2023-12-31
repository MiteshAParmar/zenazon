import 'package:zenazon/app/utility/consts.dart';

class No22ImageViewBuilder extends StatelessWidget {
  const No22ImageViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red.shade50,
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: no22_imagelist.length,
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 1.2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.whiteColor,
                ),
                child: Image.network(no22_imagelist[index], fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}
