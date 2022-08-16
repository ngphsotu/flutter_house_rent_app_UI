import 'package:flutter/material.dart';

import 'widget/best_offer.dart';
import 'widget/categories.dart';
import 'widget/search_input.dart';
import 'widget/welcome_text.dart';
import 'widget/custom_app_bar.dart';
import 'widget/recommended_house.dart';
import 'widget/custom_bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(),
            const SearchInput(),
            const Categories(),
            RecommendedHouse(),
            BestOffer(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
