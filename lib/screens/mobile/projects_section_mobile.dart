import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';


class ProjectSectionMobile extends StatelessWidget {
  const ProjectSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      height: 600,
      child: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 10),
            child:
            Text("Projects", style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 30)),
          ),
          SizedBox(
            height: 530,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final Uri url = Uri.parse(projects[index].gitlink);
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            projects[index].imageString,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        width: 200,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SelectableText(
                              projects[index].projectName,
                              style: Theme.of(context).textTheme.headline4?.copyWith(fontSize: 12),
                            ),
                            IconButton(
                              onPressed: () async {
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                }
                              },
                              icon: const FaIcon(
                                FontAwesomeIcons.link,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
