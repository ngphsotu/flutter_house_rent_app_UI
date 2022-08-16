import 'package:flutter/material.dart';

import '/model/house.dart';
import 'widget/about.dart';
import 'widget/house_info.dart';
import 'widget/content_intro.dart';
import 'widget/detail_app_bar.dart';

class DetailPage extends StatelessWidget {
  final House house;

  const DetailPage({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(house: house),
            const SizedBox(height: 20),
            ContenIntro(house: house),
            const SizedBox(height: 20),
            const HouseInfo(),
            const SizedBox(height: 20),
            const About(),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text('Book Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
