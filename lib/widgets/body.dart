import 'package:flutter/material.dart';
import 'package:kali2025/controllers/navigation_controller.dart';
import 'package:kali2025/definitions/enums.dart';
import 'package:kali2025/pages/about_page.dart';
import 'package:kali2025/pages/contact_page.dart';
import 'package:kali2025/pages/gallery_page.dart';
import 'package:kali2025/pages/main_page.dart';
import 'package:kali2025/pages/projects_page.dart';
import 'package:watch_it/watch_it.dart';

class Body extends WatchingWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final displayPage = watchPropertyValue(
      (NavigationController n) => n.currentPage,
    );

    return switch (displayPage) {
      DisplayPage.main => const MainPage(),
      DisplayPage.about => const AboutPage(),
      DisplayPage.projects => const ProjectsPage(),
      DisplayPage.gallery => const GalleryPage(),
      DisplayPage.contact => const ContactPage(),
    };
  }
}
