import 'package:flutter/material.dart';
import 'package:kelvin_atemie_hart_portfolio/constants.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: Column(mainAxisAlignment:MainAxisAlignment.center,children: [
        Flexible(flex: 1, child: Container()),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0, top: 30),
          child:
          Text("Skills", style: Theme.of(context).textTheme.headline3),
        ),
        Flexible( flex: 2,
          child: Row(crossAxisAlignment:CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: skills.map((e) => Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8.0),
                child: Image.asset(e.imageString, fit: BoxFit.cover, height: 100,),
              ),
              Text(e.skillName, style: Theme.of(context).textTheme.headline4),
            ],
          )).toList(),),
        )
      ],),
    );
  }
}