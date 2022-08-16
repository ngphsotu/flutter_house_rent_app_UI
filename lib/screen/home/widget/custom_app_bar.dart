import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/menu.svg'),
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
