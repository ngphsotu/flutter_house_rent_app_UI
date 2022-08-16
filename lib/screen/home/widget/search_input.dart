import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search here ...',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          prefixIcon: Container(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
          contentPadding: const EdgeInsets.all(2),
        ),
      ),
    );
  }
}
