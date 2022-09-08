import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SectionSocialLinks extends StatelessWidget {
  const SectionSocialLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            FontAwesomeIcons.facebookSquare,
            size: 40,
            color: Colors.blue,
          ),
          Icon(
            FontAwesomeIcons.instagram,
            size: 40,
            color: Colors.purple,
          ),
          Icon(
            FontAwesomeIcons.youtube,
            size: 40,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
