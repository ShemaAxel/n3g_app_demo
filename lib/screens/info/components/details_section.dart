import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 20),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kBege,
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [LeftSection(), RightSection()],
          ),
        ),
      ),
    );
  }
}

class LeftSection extends StatelessWidget {
  const LeftSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/cow.png',
            width: 200,
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_shopping_cart_outlined,
                      size: 30,
                    ),
                    Text(
                      'Buy',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/hammer.svg',
                      width: 30,
                      height: 30,
                    ),
                    Text(
                      'Bid',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RightSection extends StatelessWidget {
  const RightSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextRow(
            field: 'Name',
            value: 'Kasau',
          ),
          TextRow(
            field: 'Type',
            value: 'Mature Female',
          ),
          TextRow(
            field: 'Total Milk',
            value: '40 litre/day',
          ),
          TextRow(
            field: 'Weight',
            value: '600kg',
          ),
          TextRow(
            field: 'Location',
            value: '1',
          ),
          TextRow(
            field: 'Birth Date',
            value: '16/12/2018',
          ),
          TextRow(
            field: 'Price',
            value: 'RWF 12000',
          ),
          ProfileButton(
            text: 'Genetic Profile',
          )
        ],
      ),
    );
  }
}

class TextRow extends StatelessWidget {
  const TextRow({
    Key key,
    this.field,
    this.value,
  }) : super(key: key);

  final String field;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            '${field}: ',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          Text(value),
        ],
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        color: Color(0xFF1A632F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
