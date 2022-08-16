import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/model/house.dart';

class DetailAppBar extends StatelessWidget {
  final House house;

  const DetailAppBar({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            house.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/arrow.svg'),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('assets/icons/mark.svg'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
