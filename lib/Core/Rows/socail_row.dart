import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uzair_developer/Core/Animated%20Icons/animated_icons_buttons.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({Key? key}) : super(key: key);

  void _launcherURL(int value) async {
    String url = "";

    if (value == 1) {
      url = "https://web.facebook.com/uxair089/";
    } else if (value == 2) {
      url = "https://www.instagram.com/mr_kharooss1/";
    } else if (value == 3) {
      url = "https://twitter.com/Uzair089";
    } else if (value == 4) {
      url = "https://wa.me/qr/6GRBMFYEL5Q6N1";
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIconButton(
          iconData: FontAwesomeIcons.facebook,
          onTap: () {
            _launcherURL(1);
          },
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.instagram,
          onTap: () {
            _launcherURL(2);
          },
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.twitter,
          onTap: () {
            _launcherURL(3);
          },
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.whatsapp,
          onTap: () {
            _launcherURL(4);
          },
        ),
      ],
    );
  }
}
