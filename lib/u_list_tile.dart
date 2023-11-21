import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'colors.dart';
import 'style.dart';

class UListTile extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? amount;
  const UListTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0, right: 20),
      visualDensity: VisualDensity.standard,
      leading: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        width: 50,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(
          icon!,
          width: 20,
        ),
      ),
      title: PrimaryText(
        text: label!,
        size: 18,
        fontWeight: FontWeight.w500,
      ),
      subtitle: const PrimaryText(
        text: 'Successful',
        size: 14,
        color: AppColors.secondary,
      ),
      trailing: PrimaryText(
        text: amount!,
        size: 18,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
