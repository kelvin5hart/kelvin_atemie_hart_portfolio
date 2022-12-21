import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/download_resume_widget.dart';
import '../../widgets/social_media_icons_widget.dart';
import '../../widgets/typewriter_text_widget.dart';


class HomeSectionMobile extends StatelessWidget {
  const HomeSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Lottie.asset(
            'assets/HomePageAnimation.json', height: 300
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 18,
                top: MediaQuery.of(context).size.width / 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '{"I_Am:',
                  style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 16),
                ),
                const TypeWriterTextWidget(fontSize: 36,),
                const SizedBox(
                  height: 5,
                ),
                const SocialMediaIconsWidget(),
                const SizedBox(
                  height: 10,
                ),
                const DownloadResume()
              ],
            ),
          ),
          // Add the Lottie widget here

        ],
      ),
    );
  }
}
