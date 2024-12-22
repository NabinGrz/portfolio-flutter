import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';

class ProjectCard extends StatefulWidget {
  final String projectTitle;
  final String projectDesc;
  final String projectLink;
  final List<String> projectImagePath;
  const ProjectCard(
      {super.key,
      required this.projectTitle,
      required this.projectLink,
      required this.projectImagePath,
      required this.projectDesc});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovering = false;
  bool isHoveringExploreProject = false;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final hoverTransformed = Matrix4.identity()..scale(1.02);
    final transform = isHovering ? hoverTransformed : Matrix4.identity();
    final contentMaxWidth = deviceWidth * 0.55;
    return Column(
      children: [
        MouseRegion(
          onEnter: (e) => setState(() => isHovering = true),
          onExit: (e) => setState(() => isHovering = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: contentMaxWidth,
            transform: transform,
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: isHovering ? const Color(0xff212428) : null,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: widget.projectImagePath
                        .map(
                          (e) => Container(
                            width: deviceWidth * 0.136,
                            height: deviceWidth * 0.280,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/$e"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/flutter_logo.png",
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "flutter - mobile app",
                            style: TextStyle(
                              color: const Color(0xffFE8652),
                              fontSize: deviceWidth * 0.015,
                              fontFamily:
                                  GoogleFonts.alegreyaSansSc().fontFamily,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: contentMaxWidth * 0.56,
                        child: Text(
                          "${widget.projectTitle}\nAPP",
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: deviceWidth * 0.019,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: contentMaxWidth * 0.38,
                        child: Text(
                          widget.projectDesc,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.dmSans(
                              color: const Color.fromARGB(255, 231, 241, 253),
                              fontStyle: FontStyle.normal,
                              fontSize: deviceWidth * 0.01,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MouseRegion(
                        onEnter: (e) =>
                            setState(() => isHoveringExploreProject = true),
                        onExit: (e) =>
                            setState(() => isHoveringExploreProject = false),
                        child: Link(
                            target: LinkTarget.blank,
                            uri: Uri.parse(widget.projectLink),
                            builder: (context, followLink) => GestureDetector(
                                  onTap: followLink,
                                  child: Container(
                                    width: contentMaxWidth * 0.24,
                                    height: 39.74,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFFE8652),
                                      shape: RoundedRectangleBorder(
                                          side: isHoveringExploreProject
                                              ? const BorderSide(
                                                  color: Colors.white, width: 3)
                                              : BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Explore Project',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: deviceWidth * 0.009,
                                          fontFamily:
                                              GoogleFonts.dmSans().fontFamily,
                                          fontWeight: FontWeight.w800,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
