import 'package:bunkie/widgets/controls.dart';
import 'package:bunkie/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class MatchTab extends StatefulWidget {
  const MatchTab({Key? key}) : super(key: key);

  @override
  _MatchTabState createState() => _MatchTabState();
}

class _MatchTabState extends State<MatchTab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Center(
            child: ProfileCard(),
          ),
        ),
      ],
    );
  }
}
