import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/core/utils/app_assets.dart';
import 'package:monglish/core/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'dart:ui' as ui;

class HomeBodyContent extends StatelessWidget {
  const HomeBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RewardsCustomPainter(),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.w, top: 2.h, bottom: 3.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultText(
                  text: "Rewards",
                  fontSize: 17.sp,
                ),
                10.ph,
                DefaultText(text: "This Week"),
                DefaultText(
                    text: "You Earned",
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp),
                5.ph,
                Row(
                  children: [
                    DefaultText(
                        text: "45",
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                    5.pw,
                    DefaultText(text: "PTS", fontSize: 14.sp),
                    8.pw,
                    Row(
                      children: [
                        DefaultText(text: "INFO", fontSize: 15.sp),
                        4.pw,
                        ImageIcon(
                          color: Colors.white,
                          AssetImage(AppAssets.infoIcon),
                        )
                      ],
                    ),
                  ],
                ),
                5.ph,
                DefaultText(
                    text: "Your hard work is paying off we're so proud of you!",
                    fontSize: 12.7.sp),
                15.ph,
                DefaultTextButton(
                  text: "The Shop",
                  width: 45.w,
                  height: 3.h,
                  borderRadius: 40,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          Image.asset(AppAssets.homeRobotLoveImage),
        ],
      ),
    );
  }
}

class RewardsCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.2143621);
    path_0.cubicTo(
        size.width,
        size.height * 0.1700000, // Lowered the upper line
        size.width * 0.9705286,
        size.height * 0.13069417, // Lowered control point
        size.width * 0.9205286,
        size.height * 0.13069417);
    path_0.lineTo(size.width * 0.09195686, size.height * 0.001459204);
    path_0.cubicTo(size.width * 0.04229143, size.height * -0.003829679, 0,
        size.height * 0.05350583, 0, size.height * 0.1261271);
    path_0.lineTo(0, size.height * 0.8750000);
    path_0.cubicTo(0, size.height * 0.9440375, size.width * 0.03837571,
        size.height, size.width * 0.08571429, size.height);
    path_0.lineTo(size.width * 0.9142857, size.height);
    path_0.cubicTo(size.width * 0.9616257, size.height, size.width,
        size.height * 0.9440375, size.width, size.height * 0.8750000);
    path_0.lineTo(size.width, size.height * 0.2143621);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(0.1);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9971429, size.height * 0.2143621);
    path_1.cubicTo(
        size.width * 0.9971429,
        size.height * 0.1700000, // Lowered the upper line
        size.width * 0.9703200,
        size.height * 0.13085000, // Lowered control point
        size.width * 0.9203200,
        size.height * 0.13085000);
    path_1.lineTo(size.width * 0.09174886, size.height * 0.005614792);
    path_1.cubicTo(
        size.width * 0.04373886,
        size.height * 0.0005022167,
        size.width * 0.002857143,
        size.height * 0.05592667,
        size.width * 0.002857143,
        size.height * 0.1261271);
    path_1.lineTo(size.width * 0.002857143, size.height * 0.8750000);
    path_1.cubicTo(
        size.width * 0.002857143,
        size.height * 0.9417333,
        size.width * 0.03995343,
        size.height * 0.9958333,
        size.width * 0.08571429,
        size.height * 0.9958333);
    path_1.lineTo(size.width * 0.9142857, size.height * 0.9958333);
    path_1.cubicTo(
        size.width * 0.9600457,
        size.height * 0.9958333,
        size.width * 0.9971429,
        size.height * 0.9417333,
        size.width * 0.9971429,
        size.height * 0.8750000);
    path_1.lineTo(size.width * 0.9971429, size.height * 0.2143621);
    path_1.close();

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.005714286;
    paint_1_stroke.shader = ui.Gradient.linear(
      Offset(size.width * 0.002564103, size.height * 0.4),
      Offset(size.width * 0.9974359, size.height * 0.4),
      [
        Colors.white.withOpacity(0.5),
        Colors.white.withOpacity(0.1),
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
