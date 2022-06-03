import 'package:flutter/material.dart';

import '../widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          //top-image part
          PhotoWidget(),
          MyDivider(),
          AchievementPart(),
          MyDivider(),
          PastFeaturedPerformance(),
          MyDivider(),
          LiveClanActivities(),
          MyDivider(),
          ClanDiscussion(),

        ],
      ),
    );
  }
}
