import 'dart:async';
import 'package:anishportfoilio/core/colors.dart';
import 'package:anishportfoilio/utils/custom_role_text.dart';
import 'package:anishportfoilio/utils/urls.dart';
import 'package:anishportfoilio/widgets/custom_section.dart';
import 'package:anishportfoilio/widgets/spacer_height.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({
    super.key,
    required this.size,
    required this.themedata,
  });

  final Size size;
  final ThemeData themedata;

  @override
  _HeroWidgetState createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget>
    with SingleTickerProviderStateMixin {
  final List<String> roles = Role.role;

  int _currentRoleIndex = 0;
  late Timer _timer;
  late AnimationController _controller;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _animation = StepTween(begin: 0, end: roles[_currentRoleIndex].length)
        .animate(_controller);

    _controller.forward();

    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _currentRoleIndex = (_currentRoleIndex + 1) % roles.length;
        _controller.reset();
        _animation = StepTween(begin: 0, end: roles[_currentRoleIndex].length)
            .animate(_controller);
        _controller.forward();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      width: widget.size.width,
      height: widget.size.height * 0.7,
      color: WebColor.primaryColor,
      child: Row(
        children: [
          Expanded(
            child: SectionContainer(
              color: WebColor.primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello I am Anish",
                    style: widget.themedata.textTheme.bodySmall,
                    textAlign: TextAlign.left,
                  ),
                  AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Text(
                        roles[_currentRoleIndex].substring(0, _animation.value),
                        style: GoogleFonts.poppins(
                          color: WebColor.btnColor,
                          fontSize: 60,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      );
                    },
                  ),
                  SpacerHeightWidget(),
                  Text(
                    "From India",
                    style: GoogleFonts.poppins(
                      color: Colors.white60,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SpacerHeightWidget(),
                  const SpacerHeightWidget(),
                  const SpacerHeightWidget(),
                  Row(
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => _launchURL(
                              Urls.linkedinUrl), // Replace with the actual LinkedIn URL
                          child: Row(
                            children: [
                              Image.asset('assets/images/linkedin_new.png',
                                  width: 37,
                                  height:
                                      37), // Replace with your actual image asset path
                              SizedBox(
                                  width: widget.size.width *
                                      0.0035), // Adjust spacing as needed
                              Text(
                                "Anish Sherigar",
                                style: GoogleFonts.poppins(
                                  color:
                                      Colors.white, // Or any color you prefer
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => _launchURL(
                              Urls.githubUrl), // Replace with the actual GitHub URL
                          child: Row(
                            children: [
                              Image.asset('assets/images/github_final.png',
                                  width: 37,
                                  height:
                                      37), // Replace with your actual image asset path
                              SizedBox(
                                  width: widget.size.width *
                                      0.0035), // Adjust spacing as needed
                              Text(
                                "Anish Sherigar",
                                style: GoogleFonts.poppins(
                                  color:
                                      Colors.white, // Or any color you prefer
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: SectionContainer(
              color: WebColor.primaryColor,
              child: Container(
                height: widget.size.height * 0.5,
                width: widget.size.width * 0.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: WebColor.btnColor,
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile_red.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
