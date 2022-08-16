import 'package:flutter/material.dart';

import '/model/house.dart';
import '../../detail/detail.dart';
import '/widget/circle_icon_button.dart';

class RecommendedHouse extends StatelessWidget {
  final recommendedList = House.generateRecommended();

  RecommendedHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      padding: const EdgeInsets.all(15),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: recommendedList.length,
        separatorBuilder: (_, index) => const SizedBox(width: 20),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailPage(house: recommendedList[index]);
            }));
          },
          child: Container(
            width: 230,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(recommendedList[index].imageUrl),
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: CircleIconButton(
                    iconUrl: 'assets/icons/mark.svg',
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.white54,
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recommendedList[index].name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              recommendedList[index].address,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                        CircleIconButton(
                          iconUrl: 'assets/icons/heart.svg',
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
