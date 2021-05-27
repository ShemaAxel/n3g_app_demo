import 'package:flutter/material.dart';

import '../../../constants.dart';

class SoldMarker extends StatelessWidget {
  const SoldMarker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 20,
      height: 100,
      decoration: BoxDecoration(
        color: kAccentColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          'Sold',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
