import 'package:flutter/material.dart';
import 'package:test_learning/widgets/custom_tabs_item.dart';

import '../utils/colors.dart';
import '../utils/size_config.dart';

class Customtabs extends StatefulWidget {
  final List<Widget> children;
  final List<String> tabs;
  const Customtabs({Key? key, required this.tabs, this.children = const []})
      : super(key: key);

  @override
  State<Customtabs> createState() => _CustomtabsState();
}

class _CustomtabsState extends State<Customtabs> {
  Widget? _content;
  late String _selectTabs;
  @override
  void initState() {
    if (widget.children.isNotEmpty) {
      _content = widget.children[0];
    }
    _selectTabs = widget.tabs[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                tileMode: TileMode.mirror,
                colors: [secondaryColor, secondaryColor[100]!],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal! * 8),
          child: Row(
              children: widget.tabs
                  .map(
                    (e) => GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectTabs = e;
                        });
                      },
                      child: CustomTabsItem(
                        title: e,
                        isSelected: e == _selectTabs,
                      ),
                    ),
                  )
                  .toList()),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 1,
        ),
        _content ?? const SizedBox.shrink()
      ],
    );
  }
}
