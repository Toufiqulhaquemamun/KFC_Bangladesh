import 'package:flutter/material.dart';

import 'footer_contents/bottom_bars.dart';
import 'footer_contents/section_copyright.dart';
import 'footer_contents/section_dev_info.dart';
import 'footer_contents/section_menu_links.dart';
import 'footer_contents/section_notice.dart';
import 'footer_contents/section_social_links.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(
            thickness: 2,
          ),
          SectionMenuLinks(),
          Divider(
            thickness: 2,
          ),
          SectionSocialLinks(),
          SectionDevInfo(),
          SectionCopyright(),
          SectionNotice(),
          BottomBars(),
        ],
      ),
    );
  }
}
