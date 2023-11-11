import 'package:zenazon/app/utility/consts.dart';

class Catavory2ListViewBuilder extends StatelessWidget {
  const Catavory2ListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          thickness: .2,
          color: AppColors.disbaledButtonColor,
          height: .5.h,
        ),
        itemCount: catagory2list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(catagory2list[index]),
          );
        },
      ),
    );
  }
}
