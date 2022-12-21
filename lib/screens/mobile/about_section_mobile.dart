import 'package:flutter/material.dart';


class AboutSectionMobile extends StatelessWidget {
  const AboutSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, top: 50),
            child:
            SelectableText("About", style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 30)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SelectableText(
              "As a driven and creative individual, I am constantly \n  pushing the boundaries of my imagination and striving to achieve my goals. \n In addition to pursuing my own aspirations, I am passionate about helping others reach their \n full potential and contribute to a better world. \n With my strong drive and technical skills, as detailed in my resume, \n I am confident in my ability to successfully execute any project or goal I set my mind to. \n -Kelvin",
              style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 20), textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}
