import 'package:zenazon/app/utility/consts.dart';

class No21ThumbsIcon extends StatefulWidget {
  final double iconSize;
  const No21ThumbsIcon({
    super.key,
    this.iconSize = 25.0,
  });

  @override
  State<No21ThumbsIcon> createState() => _No21ThumbsIconState();
}

class _No21ThumbsIconState extends State<No21ThumbsIcon> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          ischecked = !ischecked;
        });
      },
      child: Icon(
        Icons.thumb_up,
        color: ischecked ? AppColors.starcolor : Colors.grey,
        size: widget.iconSize,
      ),
    );
  }
}
