import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../pages/home/home.page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(context,
          navBarStyle:
          NavBarStyle.style8,
          confineInSafeArea: true,
          controller: _controller, screens: [
        HomePage(context),
        HomePage(context),
        HomePage(context),
        HomePage(context),
      ], items: [
        PersistentBottomNavBarItem(
          iconSize: 30,
          icon: const Icon(Icons.home),
          title: "Home",
          activeColorPrimary: Theme.of(context).colorScheme.primary,
          activeColorSecondary: Theme.of(context).selectedRowColor,
          inactiveColorPrimary: Theme.of(context).unselectedWidgetColor,
        ),
        PersistentBottomNavBarItem(
          iconSize: 30,
          icon: const Icon(Icons.category),
          title: "Categories",
          activeColorPrimary: Theme.of(context).colorScheme.primary,
          activeColorSecondary: Theme.of(context).selectedRowColor,
          inactiveColorPrimary: Theme.of(context).unselectedWidgetColor,
        ),
        PersistentBottomNavBarItem(
          iconSize: 30,
          icon: const Icon(Icons.save),
          title: "Saved",
          activeColorPrimary: Theme.of(context).colorScheme.primary,
          activeColorSecondary: Theme.of(context).selectedRowColor,
          inactiveColorPrimary: Theme.of(context).unselectedWidgetColor,
        ),
        PersistentBottomNavBarItem(
          iconSize: 30,
          icon: const Icon(Icons.settings),
          title: "Setting",
          activeColorPrimary: Theme.of(context).colorScheme.primary,
          activeColorSecondary: Theme.of(context).selectedRowColor,
          inactiveColorPrimary: Theme.of(context).unselectedWidgetColor,
        ),
      ],
        backgroundColor:
        Theme.of(context).bottomAppBarColor, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
      ),
    );
  }
}
