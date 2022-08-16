import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final String iconUrl;
  final Color color;

  const CircleIconButton({
    Key? key,
    required this.iconUrl,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: SvgPicture.asset(iconUrl),
    );
  }
}
