import 'package:flutter/material.dart';
import 'package:n3g_ngome/model/cow.dart';

import '../../bottom_nav.dart';
import '../../constants.dart';
import '../drawer/main_drawer.dart';
import 'components/card_component.dart';
import 'components/details_section.dart';
import 'components/title_text.dart';
import 'components/up_section.dart';

class Info extends StatelessWidget {
  const Info({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSold = false;

    return MaterialApp(
      title: 'N3G',
      home: Scaffold(
        backgroundColor: kBege,
        drawer: Drawer(
          child: MainDrawer(),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UpRow(),
                SizedBox(
                  height: 10,
                ),
                TitleText(
                  text: 'Animal Details',
                ),
                DetailsSection(),
                TitleText(
                  text: 'Pedigree',
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      Cow cow = cows[index];
                      return CowCardComponent(
                        isSold: isSold,
                        cow: cow,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
