import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class UpRow extends StatelessWidget {
  const UpRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.menu_outlined,
                size: 35,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'N3G',
                  style: TextStyle(
                    color: kAccentColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
          SvgPicture.asset(
            'assets/svgs/menu.svg',
            width: 20,
            height: 20,
          )
        ],
      ),
    );
  }
}
