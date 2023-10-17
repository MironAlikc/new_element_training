import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    this.controller,
    this.onChanged,
    this.prefix,
    this.suffix,
    this.hintText,
    this.keyboardType,
    this.errorText,
  });
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Widget? prefix;
  final Widget? suffix;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: TextField(
        keyboardType: keyboardType,
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
          errorText: errorText,
          contentPadding: EdgeInsets.all(20.0.w),
          suffixIcon: suffix,
          prefix: prefix,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
      ),
    );
  }
}
