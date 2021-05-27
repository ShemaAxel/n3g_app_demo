import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class BidOrBuySection extends StatelessWidget {
  const BidOrBuySection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: Text(
                'Buy',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: kAccentColor,
                ),
              ),
            ),
            Icon(
              Icons.add_shopping_cart_outlined,
              size: 20,
            ),
          ],
        ),
        Row(
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: Text(
                'Bid',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: kAccentColor,
                ),
              ),
            ),
            SvgPicture.asset(
              'assets/svgs/hammer.svg',
              width: 20,
              height: 20,
            ),
          ],
        )
      ],
    );
  }
}
