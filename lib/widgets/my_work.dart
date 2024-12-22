import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/project_constants.dart';
import 'package:portfolio/extension/sizebox_extension.dart';
import 'package:portfolio/widgets/project_card.dart';

import '../constants/experience_constants.dart';
import 'experience_container.dart';
import 'project_and_experience_title.dart';

class MyWork extends StatelessWidget {
  const MyWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ProjectsAndExperienceTitle(
          title: "Projects",
          subTitle:
              "Working in the Mobile Application Development field for more than 2 years so far, primarily focused in Flutter applications. These are the top notch projects accomplished so far.",
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: myProjects
              .map((e) => ProjectCard(
                  projectTitle: e['projectTitle'],
                  projectDesc: e['projectDesc'],
                  projectLink: e['projectLink'],
                  projectImagePath: e['projectImagePath']))
              .toList(),
        ),
        40.hGap,
        const ProjectsAndExperienceTitle(title: "Experience", subTitle: ""),
        Column(
            children: myExperinces
                .map((e) => ExperienceContainer(
                      date: e['date'],
                      designation: e['designation'],
                      company: e['company'],
                      description: e['description'],
                    ))
                .toList()),
      ],
    );
  }
}
