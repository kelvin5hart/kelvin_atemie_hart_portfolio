import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants.dart';
import '../../cubit/theme_cubit.dart';
import 'about_section_desktop.dart';
import 'contact_section_desktop.dart';
import 'home_section_desktop.dart';
import 'projects_section_desktop.dart';
import 'skills_section_desktop.dart';

class DesktopBodyScreen extends StatelessWidget {
  const DesktopBodyScreen({Key? key}) : super(key: key);
  static const List<String> _sectionTitles = [
    "Home",
    'Projects',
    'Skills',
    "About",
    "Contact"
  ];

  @override
  Widget build(BuildContext context) {
    Map<String, double> sectionOffsets = {
      'Home': 0.0,
      'Projects': MediaQuery.of(context).size.height / 1.5,
      'Skills': MediaQuery.of(context).size.height * 2 / 1.5,
      'About': MediaQuery.of(context).size.height * 3 / 1.5,
      'Contact': MediaQuery.of(context).size.height * 4 / 1.5,
    };
    final ScrollController scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width / 18),
          child: const Text(
            "Kelvin's Portfolio 😉",
            // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
        actions: [
          for (final sectionTitle in _sectionTitles)
            TextButton(
              onPressed: () {
                // Scroll to the corresponding section
                scrollController.animateTo(
                  sectionOffsets[sectionTitle]!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Text(
                sectionTitle,
                style: Theme.of(context).textTheme.bodyText1,
                // style: const TextStyle(
                //   color: Colors.black,
                //   // Add a border around the text
                // ),
              ),
            ),
          const SizedBox(
            width: 30,
          ),
          // GetX<ThemeController>(
          //   builder: (themeController) => Padding(
          //     padding: EdgeInsets.only(
          //         right: MediaQuery.of(context).size.width / 18),
          //     child: Switch(
          //       value: themeController.currentThemeState == 'dark',
          //       onChanged: (value) {
          //         if (value) {
          //           themeController.switchTheme();
          //         } else {
          //           themeController.switchTheme();
          //         }
          //       },
          //     ),
          //   ),
          // )
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
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const HomeSection(),
            const ProjectsSection(),
            const SkillsSection(),
            const AboutSection(),
            ContactSection(),
            Container(
                color: Theme.of(context).backgroundColor,
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                child: const Center(
                  child: Text(
                      "© 2022 Kelvin Atemie-Hart. All Rights Reserved. Website created with Flutter"),
                ))
          ],
        ),
      ),
    );
  }
}
