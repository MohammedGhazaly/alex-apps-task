import 'package:alex_apps_taks/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

final List<PersistentBottomNavBarItem> navBarsItems = [
  PersistentBottomNavBarItem(
    icon: const Icon(Icons.house_rounded),
    title: "Home",
    activeColorPrimary: AppColors.primaryColor,
    inactiveColorPrimary: AppColors.darkColor1,
  ),
  PersistentBottomNavBarItem(
    icon: const Icon(Icons.description_rounded),
    title: "Shop",
    activeColorPrimary: AppColors.primaryColor,
    inactiveColorPrimary: AppColors.darkColor1,
  ),
  PersistentBottomNavBarItem(
    icon: const Icon(CupertinoIcons.chat_bubble_text),
    title: "Bag",
    activeColorPrimary: AppColors.primaryColor,
    inactiveColorPrimary: AppColors.darkColor1,
  ),
  PersistentBottomNavBarItem(
    icon: const Icon(Icons.pending_outlined),
    title: "Favorites",
    activeColorPrimary: AppColors.primaryColor,
    inactiveColorPrimary: AppColors.darkColor1,
  ),
];
List<Widget> buildScreens = [
  SizedBox(),
  SizedBox(),
  SizedBox(),
  SizedBox(),
];
