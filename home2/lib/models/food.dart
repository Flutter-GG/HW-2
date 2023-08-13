class Food {
  String name;
  String price;
  String imgePath;
  String rating;

  Food(
      {required this.name,
      required this.price,
      required this.imgePath,
      required this.rating});

  String get _name => name;
  String get _price => price;
  String get _imgPath => imgePath;
  String get _rating => rating;
}
