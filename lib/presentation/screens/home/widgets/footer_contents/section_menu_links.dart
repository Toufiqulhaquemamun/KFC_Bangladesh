import 'package:flutter/material.dart';

class SectionMenuLinks extends StatelessWidget {
  const SectionMenuLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('ABOUT KFC'),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Text('|'),
            ),
            Text('FEEDBACK'),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Text('|'),
            ),
            Text('CONTACT US'),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Text('|'),
            ),
            Text('BRAND T & C'),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Text('|'),
            ),
            Text('FAQ'),
          ],
        ),
      ),
    );
  }
}
