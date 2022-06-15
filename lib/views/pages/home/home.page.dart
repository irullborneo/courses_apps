import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_learning/widgets/card_section.dart';
import 'package:test_learning/widgets/input/search.input.dart';

import '../../../utils/size_config.dart';
import '../../../widgets/cached_avatar.dart';
import '../../../widgets/cached_image.dart';
import '../../../widgets/custom_tabs.dart';
import '../../../widgets/section_widget.dart';

class HomePage extends StatefulWidget {
  final BuildContext context;
  const HomePage(this.context, {Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            _greatingSection(),
            _searchSection(),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 2,
            ),
            Customtabs(
              tabs:["My Courses", "Trending"],
              children: [_myCourseSection(),_myCourseSection()],
            )
          ],
        ),
      ),
    );
  }

  Widget _greatingSection() {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.blockSizeVertical! * 2,
          horizontal: SizeConfig.blockSizeHorizontal! * 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                "Hello Satwik",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 6,),
              AutoSizeText(
                "What are you learning today?",
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
          CachedAvatar(
            radius: SizeConfig.blockSizeHorizontal! * 6.5,
          )
        ],
      ),
    );
  }

  Widget _searchSection() {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.blockSizeVertical! * 2,
          horizontal: SizeConfig.blockSizeHorizontal! * 8),
      child: const SearchInput(),
    );
  }

  Widget _myCourseSection() {
    return Builder(
      builder: (context) {
        SizeConfig().init(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SectionWidget(
              child: SizedBox(
                height: SizeConfig.blockSizeVertical! * 25,
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CardSection(
                    margin: index == 0
                        ? EdgeInsets.only(
                            right: 10,
                            left: SizeConfig.blockSizeHorizontal! * 8,
                            top: 2)
                        : const EdgeInsets.only(right: 10, top: 2),
                    width: SizeConfig.blockSizeHorizontal! * 75,
                    height: SizeConfig.blockSizeVertical! * 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CachedImage(
                          width: double.infinity,
                          height: SizeConfig.blockSizeVertical! * 15,
                          borderRadius: BorderRadius.circular(10),
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(height: 8,),
                        AutoSizeText("Virtual Reality", style: Theme.of(context).textTheme.headline6, minFontSize: 14, maxLines: 2,),
                        const SizedBox(height: 8,),
                        AutoSizeText("Satwick Pachino", style: Theme.of(context).textTheme.caption,minFontSize: 12, maxLines: 3,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SectionWidget(
              title: "Top Educators",
              child: SizedBox(
                height: SizeConfig.blockSizeVertical! * 20,
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CardSection(
                    margin: index == 0
                        ? EdgeInsets.only(
                            right: 10,
                            left: SizeConfig.blockSizeHorizontal! * 8,
                            top: 2)
                        : const EdgeInsets.only(right: 10, top: 2),
                    width: SizeConfig.blockSizeVertical! * 17,
                    height: SizeConfig.blockSizeVertical! * 20,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CachedAvatar(radius: SizeConfig.blockSizeHorizontal! * 6.5,),
                              const SizedBox(height: 8,),
                              AutoSizeText("Cristoper Roy", style: Theme.of(context).textTheme.headline6, maxFontSize: 15, minFontSize: 12, maxLines: 2,),
                              const SizedBox(height: 4,),
                              AutoSizeText("24 Courses", style: Theme.of(context).textTheme.caption,minFontSize: 12, maxLines: 3,)
                            ],
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                            left: 0,
                            right: 0,
                            child: Icon(FontAwesomeIcons.angleDown, size: 12,))
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        );
      }
    );
  }
}
