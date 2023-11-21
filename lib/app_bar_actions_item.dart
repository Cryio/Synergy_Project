import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarActionItem extends StatelessWidget {
  final Color iconColor;

  const AppBarActionItem({
    Key? key,
    this.iconColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/home.svg',
            width: 20.0,
            color: iconColor,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/ring.svg',
            width: 20.0,
            color: iconColor,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Row(
          children: [
            CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage('assets/logo.png'),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: Color(0xffBB86FC),
            ),
          ],
        )
      ],
    );
  }
}
