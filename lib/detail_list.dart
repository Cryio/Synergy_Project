import 'package:flutter/material.dart';
import 'u_list_tile.dart';
import 'size_config.dart';
import 'data.dart';
import 'style.dart';

class DetailList extends StatelessWidget {
  const DetailList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                offset: Offset(10, 15),
                blurRadius: 15,
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Recent Activities',
              size: 35,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),

        Column(
          children: List.generate(
            recentActivities.length,
            (index) =>  UListTile(
              icon: recentActivities[index]["icon"],
              amount:recentActivities[index]["at"],
              label: recentActivities[index]["label"],
            ),
          ),
        ),
      ],
    );
  }
}
