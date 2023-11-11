// ignore_for_file: avoid_print

import '../../../../widgets/1 -Signup & Login page/login_email_textformfield.dart';
import '../../../../widgets/1 -Signup & Login page/login_password_textformfield.dart';
import '../../../../widgets/1 -Signup & Login page/red_button.dart';
import '../controllers/forgot_password_controller.dart';
import 'package:zenazon/app/utility/consts.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  ForgotPasswordView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
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
          icon: const Icon(
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
                    'Forgot Password',
                    style: GoogleFonts.montserrat(
                      fontSize: 35.dp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Please enter your email address. You will receive a link to create a new password via email.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Form(key: _formKey, child: const LoginEmailTextFormField()),
              SizedBox(
                height: 1.h,
              ),

              const LoginPasswordTextFormField(),
              SizedBox(
                height: 1.h,
              ),

              SizedBox(
                height: 10.h,
              ),

              //---------Red LOGIN button----------------------------------------
              const RedButton(title: 'SEND'),
              SizedBox(height: 11.h),
              // ElevatedButton(
              //   onPressed: () {
              //     if (_formKey.currentState!.validate()) {
              //       print("Email is valid");
              //       // Process the form.
              //     } else {
              //       print("Email is not valid");
              //       // Handle the error.
              //     }
              //   },
              //   child: const Text("Submit"),
              // )
              //---------OR SINGUP WITH SOCIAL ACCOUNTS----------------------------------------
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNavigationwithGoogleFacebook(
      //   title: 'Forgot your password?',
      // ),
    );
  }
}
