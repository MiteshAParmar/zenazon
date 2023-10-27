// ignore_for_file: library_private_types_in_public_api

import 'package:zenazon/app/utility/consts.dart';

class LoginEmailTextFormField extends StatefulWidget {
  const LoginEmailTextFormField({Key? key}) : super(key: key);

  @override
  _LoginEmailTextFormFieldState createState() =>
      _LoginEmailTextFormFieldState();
}

class _LoginEmailTextFormFieldState extends State<LoginEmailTextFormField> {
  bool isValidEmail = false;

  String? validateEmail(String? value) {
    const pattern = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$';
    final regex = RegExp(pattern);

    if (!regex.hasMatch(value!)) {
      setState(() {
        isValidEmail = false;
      });
      return 'Enter a valid email address';
    } else {
      setState(() {
        isValidEmail = true;
      });
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.redColor,
      validator: validateEmail,
      onChanged: (value) {
        validateEmail(value);
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 1.h, bottom: 2.5.h, top: 2.5.h),
        suffixIcon: isValidEmail
            ? const Icon(
                Icons.check,
                color: Colors.green,
              )
            : null,
        label: const Text('Email'),
        hintStyle: TextStyle(color: AppColors.disbaledButtonColor),
        hintText: ' Enter your Email address',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
              width: .5, color: AppColors.primaryGrey1.withOpacity(.5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:
              BorderSide(width: .5, color: AppColors.redColor.withOpacity(.5)),
        ),
        filled: true,
        fillColor: AppColors.whiteColor,
      ),
    );
  }
}
