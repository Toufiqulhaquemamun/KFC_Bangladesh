import 'package:flutter/material.dart';

class SectionCopyright extends StatelessWidget {
  const SectionCopyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 5, 25, 20),
      child: Text(
        '© Copyright ${DateTime.now().year} KFC. All Rights Reserved.',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
