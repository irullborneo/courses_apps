import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class CustomTabsItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  const CustomTabsItem({Key? key, required this.title, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.blockSizeVertical! * 1.5,
        horizontal: SizeConfig.blockSizeHorizontal! * 1,
      ),
      margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal! * 5),
      decoration: (isSelected)
          ? const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.white)))
          : null,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5!.copyWith(
            fontWeight: (isSelected) ? FontWeight.w700 : FontWeight.normal),
      ),
    );
  }
}
