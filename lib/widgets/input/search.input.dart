import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_learning/utils/colors.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? placeholder;
  final Function(String)? onChanged;
  const SearchInput(
      {Key? key, this.controller, this.placeholder, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.white30,
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(0, -1), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
              tileMode: TileMode.mirror,
              colors: [secondaryColor[500]!, secondaryColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          suffixIcon: const Icon(
            FontAwesomeIcons.search,
            size: 20,
          ),
          // contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          hintText: placeholder ?? "Search Courses, Educators...",
          hintStyle: Theme.of(context).textTheme.caption!.copyWith(fontSize: 15),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
