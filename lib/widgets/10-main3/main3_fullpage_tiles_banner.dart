import 'package:zenazon/app/utility/consts.dart';

class Main3FullpageTilesBanner extends StatelessWidget {
  const Main3FullpageTilesBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/main3_cover.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.blackColor.withOpacity(0.0),
                        AppColors.blackColor.withOpacity(0.7),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 1.h,
                  right: 2.h,
                  child: Text('New Collection',
                      style: GoogleFonts.montserrat(
                          fontSize: 24.dp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
              height: 40.h,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.dp),
                              child: Text(
                                'Summer \nsale',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 26.dp,
                                    color: AppColors.redColor),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/main3_squere_image.png',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      AppColors.blackColor.withOpacity(0.0),
                                      AppColors.blackColor.withOpacity(0.7),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 30,
                                left: 40,
                                child: Text(
                                  'Black',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 26.dp,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/main3_portrait_image.png',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                AppColors.blackColor.withOpacity(0.0),
                                AppColors.blackColor.withOpacity(0.7),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 150,
                          left: 40,
                          child: Text("Men's\nhoodies",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 26.dp,
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
