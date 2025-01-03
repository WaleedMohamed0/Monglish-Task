import 'package:flutter/material.dart';
import 'package:monglish/core/utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomTableCalendar extends StatelessWidget {
  const CustomTableCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime(2022),
      lastDay: DateTime(2025),
      calendarFormat: CalendarFormat.month,
      startingDayOfWeek: StartingDayOfWeek.sunday,
      daysOfWeekHeight: 40,
      daysOfWeekStyle: DaysOfWeekStyle(
        decoration: BoxDecoration(
          color: AppColors.userInfoContainerColor,
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
      ),
      calendarStyle: CalendarStyle(
        rowDecoration: BoxDecoration(color: AppColors.userInfoContainerColor),
        todayDecoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        selectedDecoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        defaultTextStyle: const TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        outsideTextStyle: const TextStyle(
          color: Colors.grey,
        ),
        holidayTextStyle: const TextStyle(
          color: Colors.blue,
        ),
        markersMaxCount: 1,
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        decoration: BoxDecoration(
          color: AppColors.userInfoContainerColor,
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        titleTextStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        leftChevronIcon:
            const Icon(Icons.chevron_left, color: AppColors.primaryColor),
        rightChevronIcon:
            const Icon(Icons.chevron_right, color: AppColors.primaryColor),
      ),
    );
  }
}
