import 'package:flutter/material.dart';

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
          Container(
              margin: const EdgeInsets.only(top: 40, bottom: 40),
              // width: 200,
              // height: 300,
              child: Center(
                child: Image.asset(
                  "assets/images/home page logo.png",
                  scale:1.1,
                  fit: BoxFit.contain,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
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
