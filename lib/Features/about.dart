import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uzair_developer/Core/Animated%20Contacts/animates_contacts.dart';
import 'package:uzair_developer/Core/Rows/socail_row.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  void _launcherURL(int value) async {
    String url = "";

    if (value == 1) {
      url = "https://github.com/uzairdeveloper2";
    } else if (value == 2) {
      url = "https://gitlab.com/uzairstudy321";
    } else if (value == 3) {
      url = "https://www.linkedin.com/in/uzairdev1/";
    }

    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw "Could Not Launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.3
              : context.screenWidth * 0.2,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        color: Colors.black,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 30,
      ),
      height: 850.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/dev.png",
                scale: 7,
                // height: 156.0,
              ),
              const Text(
                "Muhammad Uzair",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Hey! "
                  " I am an expert-level mobile application developer with experience in Flutter,"
                  " Dart, API integration, Google Firebase, Firestore, Maps, Payment Method integration,"
                  " user authentication, and many more. I'm passionate about mobile development,"
                  " and I look forward to working with you and fulfilling your needs.",
                  textAlign: TextAlign.center,
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                  Chip(
                    label: Text(
                      "Flutter Developer",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                  Chip(
                    label: Text(
                      "UI / UX Enthusiast",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ),
              //
              Divider(
                color: Colors.white,
              ),

              //
              Center(
                child: AnimatedContact(
                  iconData: FontAwesomeIcons.github,
                  title: "Github",
                  subtitle: "www.github.com/uzairdeveloper2",
                  onTap: () {
                    _launcherURL(1);
                  },
                ),
              ),
              Center(
                child: AnimatedContact(
                  iconData: FontAwesomeIcons.gitlab,
                  title: "Gitlab",
                  subtitle: "www.gitlab.com/uzairstudy321",
                  onTap: () {
                    _launcherURL(2);
                  },
                ),
              ),
              Center(
                child: AnimatedContact(
                  iconData: FontAwesomeIcons.linkedin,
                  title: "Linkedin",
                  subtitle: "www.linkedin.com/in/uzairdev1/",
                  onTap: () {
                    _launcherURL(3);
                  },
                ),
              ),
            ],
          ),

          //
          Column(
            children: [
              Divider(
                color: Colors.white,
              ),
              SocialRow(),
            ],
          ),
        ],
      ),
    );
  }
}
