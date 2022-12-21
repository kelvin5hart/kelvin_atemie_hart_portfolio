import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, top: 50),
            child:
            SelectableText("About", style: Theme.of(context).textTheme.headline3),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width /18),
            child: FittedBox(
              fit: BoxFit.contain,
              child: SelectableText(
                  "As a driven and creative individual, I am constantly \n  pushing the boundaries of my imagination and striving to achieve my goals. \n In addition to pursuing my own aspirations, I am passionate about helping others reach their \n full potential and contribute to a better world. \n With my strong drive and technical skills, as detailed in my resume, \n I am confident in my ability to successfully execute any project or goal I set my mind to. \n -Kelvin",
                style: Theme.of(context).textTheme.headline5, textAlign: TextAlign.center,),
            ),
          ),
        ],
      ),
    );
  }
}
