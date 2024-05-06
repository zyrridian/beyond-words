import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../utils/constants/sizes.dart';

class ZHomeCalendar extends StatelessWidget {
  const ZHomeCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime.now();
    final DateTime firstDay = DateTime.utc(today.year, today.month, 1);
    final DateTime lastDay = DateTime.utc(today.year, today.month + 1, 0);

    return Column(
      children: [
        /// Title
        Text(
          'Your Learning Streak for ${DateFormat('MMMM').format(today)}',
          style: const TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
        const SizedBox(height: ZSizes.spaceBetweenItems),

        /// Calendar
        TableCalendar(
          focusedDay: today,
          firstDay: firstDay,
          lastDay: lastDay,
          headerVisible: false,
          availableGestures: AvailableGestures.none,
        ),
      ],
    );
  }
}
