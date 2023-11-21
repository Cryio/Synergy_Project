import 'package:flutter/material.dart';
import 'data.dart';
import 'colors.dart';
import 'style.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
            History.length,
            (index) => TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding:  const EdgeInsets.only(top: 10, bottom: 10),
                  child: const CircleAvatar(
                    radius: 14,
                  ),
                ),
                PrimaryText(
                  text: History[index]['label']!,
                  size: 18,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: History[index]['time']!,
                  size: 14,
                  color: AppColors.secondary,
                ),
                PrimaryText(
                  text: History[index]['status']!,
                  size: 14,
                  color: AppColors.secondary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
