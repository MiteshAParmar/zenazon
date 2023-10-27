// ignore_for_file: prefer_const_declarations, library_private_types_in_public_api

import 'package:zenazon/app/utility/consts.dart';

class LoginNameTextFormField extends StatefulWidget {
  const LoginNameTextFormField({Key? key}) : super(key: key);

  @override
  _LoginNameTextFormFieldState createState() => _LoginNameTextFormFieldState();
}

class _LoginNameTextFormFieldState extends State<LoginNameTextFormField> {
  bool isNameValid = false;
  final TextEditingController _nameController = TextEditingController();

  String? validateName(String? value) {
    final pattern = r'^[a-zA-Z\s]{2,}$';
    final regex = RegExp(pattern);

    if (!regex.hasMatch(value!)) {
      setState(() {
        isNameValid = false;
      });
      return 'Please enter a valid name';
    } else {
      setState(() {
        isNameValid = true;
      });
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _nameController,
      cursorColor: AppColors.redColor,
      validator: validateName,
      onChanged: (value) {
        validateName(value);
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 1.h, bottom: 2.5.h, top: 2.5.h),
        suffixIcon: isNameValid && (_nameController.text.isNotEmpty)
            ? const Icon(
                Icons.check,
                color: Colors.green,
              )
            : null,
        label: const Text('Name'),
        hintStyle: TextStyle(color: AppColors.disbaledButtonColor),
        hintText: ' Enter your name',
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
