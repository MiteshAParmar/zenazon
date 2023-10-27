// import 'package:zenazon/app/utility/consts.dart';

// class LoginPasswordTextFormField extends StatelessWidget {
//   const LoginPasswordTextFormField({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       cursorColor: AppColors.redColor,
//       decoration: InputDecoration(
//         contentPadding: EdgeInsets.only(
//             left: 1.h,
//             bottom: 2.5.h,
//             top: 2.5.h), //-- to increase height of text formfield
//         suffixIcon: const Icon(
//           Icons.check,
//           color: Colors.green,
//         ),
//         label: const Text('Password'),
//         hintStyle: TextStyle(color: AppColors.disbaledButtonColor),
//         hintText: ' Enter your Email address',
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//           borderSide: BorderSide(
//               width: .5,
//               color: AppColors.primaryGrey1
//                   .withOpacity(.5)), // Color when the field is enabled
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//           borderSide: BorderSide(
//               width: .5,
//               color: AppColors.redColor
//                   .withOpacity(.5)), // Color when the field is enabled
//         ),
//         filled: true,
//         fillColor: AppColors.whiteColor,
//       ),
//     );
//   }
// }

// ignore_for_file: library_private_types_in_public_api

import 'package:zenazon/app/utility/consts.dart';

class LoginPasswordTextFormField extends StatefulWidget {
  const LoginPasswordTextFormField({Key? key}) : super(key: key);

  @override
  _LoginPasswordTextFormFieldState createState() =>
      _LoginPasswordTextFormFieldState();
}

class _LoginPasswordTextFormFieldState
    extends State<LoginPasswordTextFormField> {
  bool isPasswordValid = false;
  bool isPasswordHidden = true;

  String? validatePassword(String? value) {
    // Example: Ensure the password is at least 6 characters long
    if (value!.length < 6) {
      setState(() {
        isPasswordValid = false;
      });
      return 'Password should be at least 6 characters long';
    } else {
      setState(() {
        isPasswordValid = true;
      });
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.redColor,
      validator: validatePassword,
      onChanged: (value) {
        validatePassword(value);
      },
      obscureText: isPasswordHidden,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 1.h, bottom: 2.5.h, top: 2.5.h),
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordHidden ? Icons.visibility_off : Icons.visibility,
            color: isPasswordValid ? Colors.green : Colors.grey,
          ),
          onPressed: () {
            setState(() {
              isPasswordHidden = !isPasswordHidden;
            });
          },
        ),
        label: const Text('Password'),
        hintStyle: TextStyle(color: AppColors.disbaledButtonColor),
        hintText: ' Enter your password',
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
