import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testovoe_zadanie/core/theme/app_color.dart';
import 'package:testovoe_zadanie/core/theme/typography.dart';

class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget({
    required this.labelText,
    required this.textEditingController,
    required this.inputType,
    this.validator,
    this.inputFormatters,
    this.height,
    this.maxLength,
    Key? key,
  }) : super(key: key);

  final double? height;
  final int? maxLength;
  final String labelText;
  final TextInputType inputType;
  final TextEditingController textEditingController;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 100,
      width: double.infinity,
      child: TextFormField(
        maxLength: maxLength,
        validator: validator,
        key: key,
        inputFormatters: inputFormatters,
        keyboardType: inputType,
        controller: textEditingController,
        decoration: InputDecoration(
            labelText: labelText,
            errorStyle: const TextStyle(color: AppColors.red),
            labelStyle: AppTypography.body,
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.red),
            ),
            focusedErrorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.purpleBlue),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.gray),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.purpleBlue),
            )),
        style: const TextStyle(color: AppColors.black),
      ),
    );
  }
}
