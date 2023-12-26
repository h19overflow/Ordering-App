class FoodItemRecipe {
  const FoodItemRecipe(
      {required this.imagePath,
      required this.title,
      required this.source,
      required this.longDescription});

  final String imagePath;
  final String source;
  final String longDescription;
  final String title;
}

List<FoodItemRecipe> foods = [
  const FoodItemRecipe(
      imagePath: 'assets/Images/Tortiala.png',
      title: 'Wraps FrFr',
      longDescription: 'Different Wraps from Different Parts of the World',
      source: 'Mexico'),
  const FoodItemRecipe(
      imagePath: 'assets/Images/FoodPlate2.png',
      title: 'Salad FrFr',
      longDescription:
          'Late Night Salads Save time in the morning and they are quite healthy and quick',
      source: 'Diet Plans'),
  const FoodItemRecipe(
      imagePath: 'assets/Images/Burger2.png',
      title: 'Burger Recipes',
      longDescription:
          'Delicious Burgers from a lot of Different Places You Get to be the Chef',
      source: 'Different Types and quick'),
  const FoodItemRecipe(
      imagePath: 'assets/Images/Oats.png',
      title: 'Over Night Oats',
      longDescription:
          'Late Night Salads Save time in the morning and they are quite healthy and quick',
      source: 'Diet Plans')
];

class FoodItemCategory {
  const FoodItemCategory(
      {required this.imagePath,
      required this.title,
      required this.listOfRecipes});

  final String imagePath;
  final String title;
  final List<FoodItemRecipe> listOfRecipes;
}

List<FoodItemCategory> foodsCategory = [
  FoodItemCategory(
      imagePath: 'assets/Images/Tortiala.png',
      title: 'Wraps ',
      listOfRecipes: [foods[0]]),
  FoodItemCategory(
      imagePath: 'assets/Images/FoodPlate2.png',
      title: 'Salad ',
      listOfRecipes: [foods[1]]),
  FoodItemCategory(
    imagePath: 'assets/Images/Burger2.png',
    title: 'Burger Recipes',
    listOfRecipes: [foods[2]],
  ),
  FoodItemCategory(
      imagePath: 'assets/Images/Oats.png',
      title: 'Over Night Oats',
      listOfRecipes: [foods[3]])
];
