class list {
  final String name;
  final String count;
  final String imageUrl;

  list({this.imageUrl, this.name, this.count});
}

List<list> categoryData = [
  new list(
      imageUrl:   "assets/tops.png",
      name: "TOPS",
      count: "6"
  ),
  new list(
      imageUrl:   "assets/bottoms.png",
      name: "BOTTOMS",
      count: "6"
  ),
  new list(
      imageUrl:   "assets/dress.png",
      name: "DRESSES",
      count: "6"
  ),
  new list(
      imageUrl:   "assets/coat.png",
      name: "COATS",
      count: "6"
  ),
  new list(
      imageUrl:   "assets/suits.png",
      name: "SUITS",
      count: "6"
  ),

];