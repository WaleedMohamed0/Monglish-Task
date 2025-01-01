import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'dart:ui' as ui;

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.1138107);
    path_0.cubicTo(
        size.width,
        size.height * 0.08092406,
        size.width * 0.9688872,
        size.height * 0.05361423,
        size.width * 0.9286872,
        size.height * 0.05121611);
    path_0.lineTo(size.width * 0.08253231, size.height * 0.0007393264);
    path_0.cubicTo(size.width * 0.03795846, size.height * -0.001919709, 0,
        size.height * 0.02686883, 0, size.height * 0.06333368);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, size.height * 0.1138107);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(0.1);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9974359, size.height * 0.1138107);
    path_1.cubicTo(
        size.width * 0.9974359,
        size.height * 0.08202029,
        size.width * 0.9673590,
        size.height * 0.05562092,
        size.width,
        size.height * 0.05330272);
    path_1.lineTo(size.width * 0.08234538, size.height * 0.002825816);
    path_1.cubicTo(
        size.width * 0.03925718,
        size.height * 0.0002554059,
        size.width * 0.002564103,
        size.height * 0.02808431,
        size.width * 0.002564103,
        size.height * 0.06333368);
    path_1.lineTo(size.width * 0.002564103, size.height * 0.4);

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.005128205;
    paint_1_stroke.shader = ui.Gradient.linear(
      Offset(size.width * 0.002564103, size.height * 0.4),
      Offset(size.width * 0.9974359, size.height * 0.4),
      [
        Colors.white.withOpacity(0.7),
        Colors.white,
      ],
      [
        0,
        1,
      ],
    );
    canvas.drawPath(path_1, paint_1_stroke);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Colors.transparent;
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CustomPaintContainer extends StatelessWidget {
  final Widget content;

  const CustomPaintContainer({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopLeftCurveClipper(),
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
        child: CustomPaint(
          size: Size(double.infinity, (45.h * 1.2256410256410257).toDouble()),
          painter: RPSCustomPainter(),
          child: content,
        ),
      ),
    );
  }
}

class DefaultText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final double? letterSpacing;

  const DefaultText({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w300,
    this.textAlign = TextAlign.start,
    this.maxLines = 2,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: 0,
          letterSpacing: letterSpacing),
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
  final double borderRadius;
  final Widget? suffixIcon;

  const DefaultTextFormField({
    super.key,
    this.controller,
    this.isPassword = false,
    required this.validationString,
    required this.hintText,
    this.borderColor = AppColors.borderColor,
    required this.keyboardType,
    this.borderRadius = 18,
    this.suffixIcon,
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
            suffixIcon: suffixIcon,
            contentPadding:
                EdgeInsets.symmetric(vertical: 2.5.h, horizontal: 3.w),
            fillColor: Colors.white,
            filled: true,
            hintStyle: TextStyle(
                color: AppColors.textFormFieldHintColor, fontSize: 14.sp),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
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

class TopLeftCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.1138107);
    path_0.cubicTo(
        size.width,
        size.height * 0.08092406,
        size.width * 0.9688872,
        size.height * 0.05361423,
        size.width * 0.9286872,
        size.height * 0.05121611);
    path_0.lineTo(size.width * 0.08253231, size.height * 0.0007393264);
    path_0.cubicTo(size.width * 0.03795846, size.height * -0.001919709, 0,
        size.height * 0.02686883, 0, size.height * 0.06333368);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, size.height * 0.1138107);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
