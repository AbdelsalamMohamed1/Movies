import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextStyle? hintStyle;
  Color borderColor;
  String hintText;
  ImageIcon? prefix;
  ImageIcon? suffix;
  int? maxLines;
  String? Function(String?)? validator;
  void Function(String)? onChanged;
  TextEditingController? controller;
  TextInputType? keyboardType;
  bool? hide;
  bool filled;
  Color? fillColor;

  CustomTextFormField({
    required this.hintText,
    required this.hintStyle,
    required this.borderColor,
    this.prefix,
    this.suffix,
    this.maxLines,
    this.validator,
    this.onChanged,
    this.controller,
    this.keyboardType,
    this.hide,
    this.filled=false,
    this.fillColor
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hide??false,
      keyboardType: keyboardType??TextInputType.text,
      controller: controller,
      onChanged:onChanged,
      validator: validator,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: Colors.red)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: borderColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(color: borderColor)),
        filled: filled,
        fillColor: fillColor,
        hintText: hintText,
        hintStyle: hintStyle,
        prefixIcon: prefix,
        suffixIcon: suffix,

      ),
    );
  }
}
