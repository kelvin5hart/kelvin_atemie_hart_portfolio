import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants.dart';
import '../../cubit/theme_cubit.dart';
import 'about_section_tablet.dart';
import 'contact_section_tablet.dart';
import 'home_section_tablet.dart';
import 'project_section_tablet.dart';
import 'skill_section_tablet.dart';

class TabletBodyScreen extends StatelessWidget {
  const TabletBodyScreen({Key? key}) : super(key: key);
  static const List<String> _sectionTitles = [
    "Home",
    'Projects',
    'Skills',
    "About",
    "Contact"
  ];
  static const Map<String, double> _sectionOffsets = {
    'Home': 0.0,
    'Projects': 500.0,
    'Skills': 1000.0,
    'About': 1500.0,
    'Contact': 2000.0,
  };

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width /18),
          child: const Text(
            "Kelvin's Portfolio 😉",
            // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 15,),
                const Expanded(
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                BlocBuilder<ThemeCubit, ThemeState>(
                  builder: (context, state) {
                    return Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 18),
                      child: Switch(
                        value: state.theme == blueDarkTheme(),
                        onChanged: (value) {
                          if (value) {
                            BlocProvider.of<ThemeCubit>(context).switchTheme();
                          } else {
                            BlocProvider.of<ThemeCubit>(context).switchTheme();
                          }
                        },
                      ),
                    );
                  },
                )
              ],
            ),
            for (final sectionTitle in _sectionTitles)
              ListTile(
                title: Text(sectionTitle),
                onTap: () {
                  // Scroll to the corresponding section
                  scrollController.animateTo(
                    _sectionOffsets[sectionTitle]!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                  // Close the drawer
                  Navigator.pop(context);
                },
              ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children:  [
            const HomeSectionTablet(),
            const ProjectsSectionTablet(),
            const SkillsSectionTablet(),
            const AboutSectionTablet(),
            const ContactSectionTablet(),
            Container(
                color: Theme.of(context).backgroundColor,
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                child: const Center(
                  child: Text(
                      "© 2022 Kelvin Atemie-Hart. All Rights Reserved. Website created with Flutter"),
                )),
          ],
        ),
      ),
    );
  }
}
