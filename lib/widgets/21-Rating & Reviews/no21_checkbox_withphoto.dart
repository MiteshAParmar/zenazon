import 'package:zenazon/app/utility/consts.dart';

class No21CheckBoxWithPhoto extends StatefulWidget {
  const No21CheckBoxWithPhoto({super.key});

  @override
  State<No21CheckBoxWithPhoto> createState() => _No21CheckBoxWithPhotoState();
}

class _No21CheckBoxWithPhotoState extends State<No21CheckBoxWithPhoto> {
  bool ischecked = true;
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => setState(
            () => ischecked = !ischecked,
          ),
          child: Icon(
            ischecked ? Icons.check_box : Icons.check_box_outline_blank,
            size: 35,
            color:
                ischecked ? AppColors.redColor : AppColors.disbaledButtonColor,
          ),
        ),
      ],
    );
  }
}
