class Cow {
  String tagId;
  String dob;
  String name;
  String sire;
  bool isMale;
  bool isSold;

  Cow(this.tagId, this.dob, this.name, this.sire, this.isMale, this.isSold);
}

List<Cow> cows = [
  Cow('KTMPX7', '2012/09/09', 'Buda Boss', 'Prospect', true, false),
  Cow('KTMPX7', '2012/09/09', 'Buda Boss', 'Prospect', false, true),
  Cow('KTMPX7', '2012/09/09', 'Buda Boss', 'Prospect', true, true),
  Cow('KTMPX7', '2012/09/09', 'Buda Boss', 'Prospect', false, false),
  Cow('KTMPX7', '2012/09/09', 'Buda Boss', 'Prospect', true, true),
  Cow('KTMPX7', '2012/09/09', 'Buda Boss', 'Prospect', false, true),
  Cow('KTMPX7', '2012/09/09', 'Buda Boss', 'Prospect', true, false),
];
