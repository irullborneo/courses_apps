import 'package:flutter/material.dart';
import 'package:test_learning/utils/size_config.dart';

class SectionWidget extends StatelessWidget {
  final String? title;
  final Widget child;
  const SectionWidget({Key? key, required this.child, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical! * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          (title == null)
              ? const SizedBox.shrink()
              : Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical! * 2, left: SizeConfig.blockSizeHorizontal!* 8),
                child: Text(
                    title!,
                    style: Theme.of(context).textTheme.headline6,
                  ),
              ),
          child
        ],
      ),
    );
  }
}
