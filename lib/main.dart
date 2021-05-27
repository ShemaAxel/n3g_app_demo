import 'package:flutter/material.dart';
import 'screens/info/info.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Info();
  }
}
