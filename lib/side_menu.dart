import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'size_config.dart';
import 'colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2,
      child: Container(
        height: SizeConfig.screenHeight,
        color: AppColors.secondaryBg,
        // width: 400,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              iconBuilder(assetName: 'assets/home.svg', label: 'Home'),
              iconBuilder(assetName: 'assets/home.svg', label: 'Settings'),
              iconBuilder(assetName: 'assets/home.svg', label: 'Logout'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget iconBuilder({
  required String assetName,
  required String label,
}) {
  return InkWell(
    onTap: () {
      // Handle icon tap
    },
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(assetName, height: 20, width: 20),
          const SizedBox(width: 10),
          Text(
            label,
            style: const TextStyle(fontSize: 16, color: AppColors.black),
          ),
        ],
      ),
    ),
  );
}
