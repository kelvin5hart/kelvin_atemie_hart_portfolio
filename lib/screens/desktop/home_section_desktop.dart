import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../widgets/download_resume_widget.dart';
import '../../widgets/social_media_icons_widget.dart';
import '../../widgets/typewriter_text_widget.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 18,
                  top: MediaQuery.of(context).size.width / 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '{"I_Am:',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const TypeWriterTextWidget(fontSize: 75,),
                  const SizedBox(
                    height: 20,
                  ),
                  const SocialMediaIconsWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const DownloadResume()
                ],
              ),
            ),
          ),
          // Add the Lottie widget here
          Expanded(
              child: Lottie.asset(
            'assets/HomePageAnimation.json',
          )),
        ],
      ),
    );
  }
}
