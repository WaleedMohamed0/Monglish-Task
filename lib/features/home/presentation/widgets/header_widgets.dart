import 'package:flutter/material.dart';
import 'package:monglish/core/extensions/empty_padding_extension.dart';
import 'package:monglish/features/home/presentation/widgets/user_image.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HeaderWidgets extends StatefulWidget {
  const HeaderWidgets({
    super.key,
  });

  @override
  State<HeaderWidgets> createState() => _HeaderWidgetsState();
}

class _HeaderWidgetsState extends State<HeaderWidgets> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.notification_add,
            color: Colors.white,
            size: 30,
          ),
          !isExpanded
              ? Expanded(
                  child: Row(
                    children: [
                      4.pw,
                      IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              isExpanded = true;
                            });
                          }),
                      Spacer(),
                    ],
                  ),
                )
              : Row(
                  children: [
                    15.pw,
                    SizedBox(
                      width: 60.w,
                      height: 4.h,
                      child: TextField(
                        style: TextStyle(fontSize: 14.sp),
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          suffixIcon: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(Icons.clear, color: Colors.grey),
                            onPressed: () {
                              setState(() {
                                isExpanded = false;
                              });
                            },
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 1),
                        ),
                      ),
                    ),
                  ],
                ),
          UserImage(),
        ],
      ),
    );
  }
}
