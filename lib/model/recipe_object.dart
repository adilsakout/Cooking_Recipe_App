class Recipe {
  String title;
  String image;
  List<String> ingredient;
  List<String> preparation;
  String category;
  int CookingTime;
  Recipe(
      {this.title,
      this.category,
      this.ingredient,
      this.preparation,
      this.CookingTime,
      this.image});
}
