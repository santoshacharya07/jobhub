import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/exports.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.keyboardType,
      this.validator,
      this.suffixIcons,
      this.obscureText});
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcons;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(kLightGrey.value),
        child: TextFormField(
          keyboardType: keyboardType,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcons,
            hintStyle: appstyle(14, Color(kDarkGrey.value), FontWeight.w500),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: Colors.red, width: 0.5)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: Colors.transparent, width: 0)),
            focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: Colors.red, width: 0)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide:
                    BorderSide(color: Color(kDarkGrey.value), width: 0)),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: Colors.transparent, width: 0)),
            border: InputBorder.none,
          ),
          controller: controller,
          cursorHeight: 25,
          style: appstyle(14, Color(kDark.value), FontWeight.w500),
          validator: validator,
        ));
  }
}
