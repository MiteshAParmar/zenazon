// ignore_for_file: prefer_const_constructors

import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/1%20-Signup%20&%20Login%20page/red_button.dart';

import '../../../../widgets/1 -Signup & Login page/bottom_nav_google_facebook.dart';
import '../../../../widgets/1 -Signup & Login page/login_email_textformfield.dart';
import '../../../../widgets/1 -Signup & Login page/login_name_textformfield.dart';
import '../../../../widgets/1 -Signup & Login page/login_password_textformfield.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        // title: const Text('SignupView'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 2.h, right: 2.h, bottom: 2.h),
          child: Column(
            children: [
              //----------Signup----------------
              Row(
                children: [
                  Text(
                    'Sign up',
                    style: GoogleFonts.montserrat(
                      fontSize: 27.dp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              //----------Name text field----------------
              SizedBox(
                height: 8.h,
              ),

              LoginNameTextFormField(),
              SizedBox(
                height: 1.5.h,
              ),

              //----------Email text field----------------
              LoginEmailTextFormField(),
              SizedBox(
                height: 1.5.h,
              ),
              //----------Password text field----------------
              LoginPasswordTextFormField(),
              SizedBox(
                height: 3.h,
              ),
              //---------Already have an account?----------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Already have an account? ',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.blackColor),
                  ),
                  Icon(
                    Icons.arrow_right_alt,
                    color: AppColors.redColor,
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              //---------Red SIGN UP button----------------------------------------
              RedButton(
                title: 'SIGN UP',
              ),
              SizedBox(height: 11.h),
              //---------OR SINGUP WITH SOCIAL ACCOUNTS----------------------------------------

              SizedBox(height: 2.h),
              //---------SOCIAL ACCOUNTS ICONS ----------------------------------------
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          BottomNavigationwithGoogleFacebook(title: 'Already have an account?'),
    );
  }
}
