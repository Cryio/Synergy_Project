import 'package:flutter/material.dart';
import 'style.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Dashboard',
              size: 30.0,
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
