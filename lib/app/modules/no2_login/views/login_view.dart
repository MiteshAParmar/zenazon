// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_import

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zenazon/widgets/1%20-Signup%20&%20Login%20page/login_email_textformfield.dart';
import 'package:zenazon/widgets/1%20-Signup%20&%20Login%20page/login_name_textformfield.dart';
import 'package:zenazon/widgets/1%20-Signup%20&%20Login%20page/login_password_textformfield.dart';
import 'package:zenazon/widgets/1%20-Signup%20&%20Login%20page/red_button.dart';

import '../../../../widgets/1 -Signup & Login page/bottom_nav_google_facebook.dart';
import '../controllers/login_controller.dart';
import 'package:zenazon/app/utility/consts.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
              //----------LOGIN----------------
              Row(
                children: [
                  Text(
                    'Login',
                    style: GoogleFonts.montserrat(
                      fontSize: 27.dp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              LoginEmailTextFormField(),
              SizedBox(
                height: 1.h,
              ),

              LoginPasswordTextFormField(),
              SizedBox(
                height: 1.h,
              ),

              SizedBox(
                height: 3.h,
              ),
              //---------FORGET YOUR PASSWORD?----------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot your password? ',
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
              //---------Red LOGIN button----------------------------------------
              RedButton(title: 'Login'),
              SizedBox(height: 11.h),
              //---------OR SINGUP WITH SOCIAL ACCOUNTS----------------------------------------
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationwithGoogleFacebook(
        title: 'Forgot your password?',
      ),
    );
  }
}
