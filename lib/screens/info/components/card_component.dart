import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:n3g_ngome/screens/info/components/sold.dart';
import 'package:n3g_ngome/model/cow.dart';
import '../../../constants.dart';
import 'bid_or_buy.dart';

class CowCardComponent extends StatelessWidget {
  const CowCardComponent({
    Key key,
    @required this.isSold,
    this.cow,
  }) : super(key: key);

  final bool isSold;
  final Cow cow;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kBege,
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GenderSection(
                isMale: cow.isMale,
              ),
              Details(
                dob: cow.dob,
                name: cow.name,
                sire: cow.sire,
                tagId: cow.tagId,
              ),
              cow.isSold ? BidOrBuySection() : SoldMarker(),
            ],
          ),
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({
    Key key,
    this.tagId,
    this.dob,
    this.name,
    this.sire,
  }) : super(key: key);
  final String tagId;
  final String dob;
  final String name;
  final String sire;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Tag ID: ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text(tagId),
          ],
        ),
        Row(
          children: [
            Text(
              'Date of Birth: ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text(dob),
          ],
        ),
        Row(
          children: [
            Text(
              'Name: ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text(name),
          ],
        ),
        Row(
          children: [
            Text(
              'Sire: ',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text(sire),
          ],
        )
      ],
    );
  }
}

class GenderSection extends StatelessWidget {
  const GenderSection({
    Key key,
    this.isMale,
  }) : super(key: key);

  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FaIcon(isMale ? FontAwesomeIcons.mars : FontAwesomeIcons.venus),
        Text(
          isMale ? 'M' : 'F',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
