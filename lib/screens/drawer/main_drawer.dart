import 'package:flutter/material.dart';
import 'package:n3g_ngome/constants.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentColor,
      body: SafeArea(
        child: Container(
          child: Text('Drawer'),
        ),
      ),
    );
  }
}
