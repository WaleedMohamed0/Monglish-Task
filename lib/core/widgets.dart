import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_colors.dart';

class DefaultText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;

  const DefaultText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.textAlign = TextAlign.start,
    this.maxLines = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}

class DefaultTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final bool isPassword;
  final String validationString;
  final String hintText;
  final Color borderColor;
  final TextInputType keyboardType;

  const DefaultTextFormField({
    super.key,
    this.controller,
    this.isPassword = false,
    required this.validationString,
    required this.hintText,
    this.borderColor = AppColors.borderColor,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          style: Theme.of(context).textTheme.bodySmall,
          obscureText: isPassword,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: borderColor),
            ),
          ),
          controller: controller,
          validator: (value) {
            if (value!.isEmpty) {
              return '$validationString must not be empty';
            }
            return null;
          },
        ),
      ],
    );
  }
}
