import 'package:flutter/material.dart';

import '../../constants.dart';

class SkillsSectionMobile extends StatelessWidget {
  const SkillsSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, top: 40),
            child: Text("Skills", style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 30)),
          ),
          Flexible(
            flex: 2,
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: skills
                  .map((e) => Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      e.imageString,
                      fit: BoxFit.cover,
                      height: 60,
                    ),
                  ),
                  Text(e.skillName,
                      style: Theme.of(context).textTheme.headline4),
                ],
              ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
