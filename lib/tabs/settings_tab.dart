import 'package:bunkie/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({ Key? key }) : super(key: key);

  @override
  _SettingsTabState createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        ProfileWidget()
      ],),
    );
  }
}