import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kelvin_atemie_hart_portfolio/models/social_media.dart';

import 'models/projects.dart';
import 'models/skills.dart';

ThemeData blueTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF101D42),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFE9ECEF), foregroundColor: Color(0xFF212529)),
    fontFamily: 'Georgia',
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 75.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF101D42)),
      headline2: TextStyle(fontSize: 40.0, fontWeight: FontWeight.normal),
      headline3: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Color(0xFF101D42)),
      headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
      headline5: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w200),
      bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF101D42),
      secondary: Colors.yellow,
    ).copyWith(background: const Color(0xFFE9ECEF)),
  );
}

ThemeData blueDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: const  Color(0xFFC9E4CA),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF343A40), foregroundColor: Color(0xFFF8F9FA)),
    fontFamily: 'Georgia',
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 75.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFFC9E4CA)),
      headline2: TextStyle(fontSize: 40.0, fontWeight: FontWeight.normal),
      headline3: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal,
          color: Color(0xFFC9E4CA)),
      headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
      headline5: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w200),
      bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFC9E4CA),
      secondary: Colors.yellow,
    ).copyWith(background: const Color(0xFF343A40)),
  );
}

List<String> logos = [
  "assets/logos/FlutterLogo.png",
  "assets/logos/DartLogo.png",
  "assets/logos/FirebaseLogo.png",
  "assets/logos/MayaLogo.jpg",
  "assets/logos/AELogo.png",
];

List<Skills> skills = [
  Skills(
      imageString: "assets/logos/FlutterLogo.png",
      skillName: "Flutter",
      yearsOfExperience: "2"),
  Skills(
      imageString: "assets/logos/DartLogo.png",
      skillName: "Dart",
      yearsOfExperience: "2"),
  Skills(
      imageString: "assets/logos/FirebaseLogo.png",
      skillName: "Firebase",
      yearsOfExperience: "2"),
  // Skills(
  //     imageString: "assets/logos/MayaLogo.jpg",
  //     skillName: "Maya",
  //     yearsOfExperience: "2"),
  // Skills(
  //     imageString: "assets/logos/AELogo.png",
  //     skillName: "After Effects",
  //     yearsOfExperience: "2"),
  Skills(
      imageString: "assets/logos/CSS3logopng.png",
      skillName: "CSS",
      yearsOfExperience: "2"),
  Skills(
      imageString: "assets/logos/html-1.png",
      skillName: "HTML",
      yearsOfExperience: "2"),
  Skills(
      imageString: "assets/logos/jslogo.png",
      skillName: "JS",
      yearsOfExperience: "2"),
  Skills(
      imageString: "assets/logos/Pythonlogo.png",
      skillName: "Python",
      yearsOfExperience: "2"),
  Skills(
      imageString: "assets/logos/Reactlogopng.png",
      skillName: "React",
      yearsOfExperience: "2"),
  Skills(
      imageString: "assets/logos/Tailwindlogopng.png",
      skillName: "Tailwind",
      yearsOfExperience: "2"),
];

List<Projects> projects = [
  Projects(
      imageString: "assets/projects/Project2.png",
      projectName: "CinemaNinja",
      gitlink: "https://linktr.ee/cinemaninja",
      typeOfProject: "Open Source",
      projectDescription:
          "An app created with me, An app created with me An app created with me An app created with me"),
  Projects(
      imageString: "assets/projects/Project3.png",
      projectName: "Social Media App",
      gitlink: "https://github.com/kelvin5hart/day_5_in_100_days_of_flutter",
      typeOfProject: "Practice/Open Source",
      projectDescription: "An app created with me"),
  Projects(
      imageString: "assets/projects/Project4.png",
      projectName: "Workout App",
      gitlink: "https://github.com/kelvin5hart/day_6_in_100_days_of_flutter",
      typeOfProject: "Practice/Open Source",
      projectDescription: "An app created with me"),
  Projects(
      imageString: "assets/projects/Project5.png",
      projectName: "Travel Guide App",
      gitlink: "https://github.com/kelvin5hart/day_4_in_100_days_of_flutter",
      typeOfProject: "Practice/Open Source",
      projectDescription: "An app created with me"),
  Projects(
      imageString: "assets/projects/Project6.png",
      projectName: "Todo App",
      gitlink: "https://github.com/kelvin5hart/day_2_in_100_days_of_flutter",
      typeOfProject: "Practice/Open Source",
      projectDescription: "An app created with me"),
  Projects(
      imageString: "assets/projects/Project7.png",
      projectName: "NFT Collection App",
      gitlink: "https://github.com/kelvin5hart/day_1_in_100_days_of_flutter",
      typeOfProject: "Open Source",
      projectDescription: "An app created with me"),
  Projects(
      imageString: "assets/projects/Project8.png",
      projectName: "Health Care App",
      gitlink: "https://github.com/kelvin5hart/MedApp",
      typeOfProject: "Open Source",
      projectDescription: "An app created with me"),
  Projects(
      imageString: "assets/projects/Project9.png",
      projectName: "Workout App",
      gitlink: "https://github.com/kelvin5hart/my_workout",
      typeOfProject: "Open Source",
      projectDescription: "An app created with me"),
  // Projects(
  //     imageString: "assets/projects/Project10.png",
  //     projectName: "Smart Home App",
  //     typeOfProject: "Open Source",
  //     projectDescription: "An app created with me"),
];

final List<SocialMedia> socialMediaLinks = [
  SocialMedia(name:
    FontAwesomeIcons.github,
   link: 'https://github.com/kelvin5hart'),
  SocialMedia(name: FontAwesomeIcons.linkedin, link: 'http://linkedin.com/in/kelvinatemiehart'),
  SocialMedia(name: FontAwesomeIcons.twitter, link: 'https://www.twitter.com/kelvin5hart'),
];
