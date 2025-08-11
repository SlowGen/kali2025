import 'package:flutter/material.dart';
import 'package:kali2025/controllers/navigation_controller.dart';
import 'package:kali2025/definitions/enums.dart';
import 'package:watch_it/watch_it.dart';

class HamburgerMenu extends WatchingWidget {
  const HamburgerMenu({super.key});

  void onChanged(DisplayPage? value) {
    di.get<NavigationController>().setCurrentPage(value!);
  }

  @override
  Widget build(BuildContext context) {
    final currentPage = watchPropertyValue(
      (NavigationController n) => n.currentPage,
    );

    return DropdownButton(
      icon: const Icon(Icons.menu),
      items: const [
        DropdownMenuItem(value: DisplayPage.main, child: Text('Main')),
        DropdownMenuItem(value: DisplayPage.about, child: Text('About')),
        DropdownMenuItem(value: DisplayPage.projects, child: Text('Projects')),
        DropdownMenuItem(value: DisplayPage.gallery, child: Text('Gallery')),
        DropdownMenuItem(value: DisplayPage.contact, child: Text('Contact')),
      ],
      onChanged: onChanged,
      padding: const EdgeInsets.all(8),
      underline: const SizedBox.shrink(),
      value: currentPage,
    );
  }
}
