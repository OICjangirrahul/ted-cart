import 'package:flutter/material.dart';
import 'package:ted_app/widgets/ted_appbar.dart';
import 'package:ted_app/widgets/ted_section.dart';

class Ted extends StatelessWidget {
  const Ted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: TedAppBar(),
        preferredSize: Size(double.infinity, 60),
      ),
      body: SingleChildScrollView(child: TedSection()),
    );
  }
}
