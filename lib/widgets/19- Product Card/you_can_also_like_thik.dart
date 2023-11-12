import '../../app/utility/consts.dart';

class YouCanAlsoLikeThis extends StatelessWidget {
  const YouCanAlsoLikeThis({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BigText(
            'You can also like this',
            fontSize: 25,
            color: AppColors.blackcofee,
            textAlign: TextAlign.left,
          ),
          BigText(
            '12 items',
            fontSize: 15,
            color: AppColors.disbaledButtonColor,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
