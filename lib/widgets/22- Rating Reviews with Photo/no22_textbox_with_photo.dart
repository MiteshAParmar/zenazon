import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/app/utility/strings.dart';
import 'package:zenazon/widgets/21-Rating%20&%20Reviews/no21_five_star_widget.dart';
import 'package:zenazon/widgets/21-Rating%20&%20Reviews/no21_thumb_icon.dart';
import 'package:zenazon/widgets/22-%20Rating%20Reviews%20with%20Photo/no22_image_view_builder.dart';

class No22TextBoxWithPhoto extends StatelessWidget {
  const No22TextBoxWithPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.whiteColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    //----------Reviewer Name----------------//
                    children: [
                      Text(
                        'Helene Moore',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.dp,
                          color: AppColors.blackcofee,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    //-----------------  Five STar Widget  -----------------//
                    children: [
                      const No21FiveStarWidget(
                        iconSize: 25,
                      ),
                      const Spacer(),
                      //-----------------  Date -----------------//
                      Text(
                        'June 5 , 2019',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 12.dp,
                          color: AppColors.disbaledButtonColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  //-----------------  Review Text Box  -----------------//
                  Text(
                    no22TextBoxWithPhoto,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.dp,
                      color: AppColors.blackcofee,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 15),
                  No22ImageViewBuilder(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //-----------------  Helpful Text  -----------------//
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          'Helpful?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16.dp,
                            color: AppColors.blackcofee,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      //-----------------  Thumbs Up Icon  -----------------//
                      const No21ThumbsIcon(
                        iconSize: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 10,
            left: 10.dp,
            child: CircleAvatar(
              radius: 25.dp,
              backgroundColor: AppColors.whiteColor,
              child: ClipOval(
                child: Image.network(
                  'https://media.istockphoto.com/id/481495679/photo/catching-up-with-a-buddy.jpg?s=612x612&w=0&k=20&c=kIBcNwKuYiHi2TFEOItiL6KLUnWn2DyjiSzzyegy48k=',
                  fit: BoxFit.cover,
                  width: 80.dp,
                  height: 80.dp,
                ),
              ),
            )),
      ],
    );
  }
}
