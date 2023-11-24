import 'package:alex_apps_taks/utils/colors.dart';
import 'package:alex_apps_taks/views/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

final List<PersistentBottomNavBarItem> navBarsItems = [
  PersistentBottomNavBarItem(
    icon: const Icon(Icons.house_rounded),
    title: "Home",
    activeColorPrimary: AppColors.primaryColor,
    inactiveColorPrimary: Colors.grey,
  ),
  PersistentBottomNavBarItem(
    icon: const Icon(Icons.description_rounded),
    title: "Docs",
    activeColorPrimary: AppColors.primaryColor,
    inactiveColorPrimary: Colors.grey,
  ),
  PersistentBottomNavBarItem(
    icon: const Icon(CupertinoIcons.chat_bubble_text),
    title: "Chat",
    activeColorPrimary: AppColors.primaryColor,
    inactiveColorPrimary: Colors.grey,
  ),
  PersistentBottomNavBarItem(
    icon: const Icon(Icons.pending_outlined),
    title: "Settings",
    activeColorPrimary: AppColors.primaryColor,
    inactiveColorPrimary: Colors.grey,
  ),
];
List<Widget> buildScreens = [
  HomeView(),
  SizedBox(),
  SizedBox(),
  SizedBox(),
];
