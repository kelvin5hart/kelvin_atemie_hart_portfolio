import 'package:flutter/material.dart';

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
                  left: MediaQuery.of(context).size.width / 18,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'I Am:',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const TypeWriterTextWidget(
                    fontSize: 75,
                  ),
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
          Container(
            margin: EdgeInsets.only(right: MediaQuery.of(context).size.width / 18 * 2, left: 10),
              // width: 200,
              // height: 300,
              child: Center(
                child: Image.asset(
                  "assets/images/home page logo.png",
                  scale: 0.6,
                  fit: BoxFit.contain,
                ),
              )),
        ],
      ),
    );
  }
}
