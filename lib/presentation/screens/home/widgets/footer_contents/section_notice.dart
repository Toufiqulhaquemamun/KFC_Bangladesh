import 'package:flutter/material.dart';

class SectionNotice extends StatelessWidget {
  const SectionNotice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 5, 35, 40),
      child: Text(
        'Food shown are for illustration purpose only. Actual product may differ from the images shown in this website. The KFC name, logos, and related marks are trademarks of KFC, Inc.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
