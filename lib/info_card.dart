import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'size_config.dart';
import 'colors.dart';
import 'style.dart';

class InfoCard extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? lastused;
  const InfoCard({

    Key? key,
    required this.icon,
    required this.label,
    required this.lastused
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:  const BoxConstraints(minWidth: 140),
      padding:  const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon!,
            width:35,
          ),
          SizedBox(
            height: SizeConfig.blockSizeHorizontal! * 2,
          ),
           PrimaryText(
            text: label!,
            size:16,
            color: AppColors.secondary,
          ),
          SizedBox(
            height: SizeConfig.blockSizeHorizontal! * 1,
          ),
           PrimaryText(
            text: lastused!,
            size: 18,
            fontWeight: FontWeight.w800,
          )
        ],
      ),
    );
  }
}
