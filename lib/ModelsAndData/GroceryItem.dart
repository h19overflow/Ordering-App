class GroceryItem {
  const GroceryItem(
      {required this.title,
      required this.imagePath,
      required this.price,
      required this.shortDescription,
      required this.longDescription,
      required this.source});

  final String title;
  final String source;
  final String imagePath;
  final double price;
  final String shortDescription;
  final String longDescription;
}

List<GroceryItem> groceryItems = [
  const GroceryItem(
      title: 'Oregano',
      imagePath: 'assets/Images/Oregon.png',
      price: 5,
      shortDescription: 'Spicy and herby',
      longDescription:
          'Comes From the Earthy Flavour and Adds a lot of spice and excitement to your daily Meal and is quite versatile',
      source: 'Exported From India'),
  const GroceryItem(
      title: 'Watermelon',
      imagePath: 'assets/Images/Watermelon.png',
      price: 5,
      shortDescription: 'Fresh And Cold',
      source: 'Exported From Egypt',
      longDescription:
          'In This hot Weather what is better Than Cold and sweet Fruit '),
  const GroceryItem(
      title: 'Kiwi',
      imagePath: 'assets/Images/Kiwi.png',
      price: 5,
      shortDescription: 'Sour',
      source: 'Exported From Taiwan',

      longDescription:
          'The Perfect Mix of Sour and Refreshing The way it melts in the mouth but also tingles it is perfect '),
  const GroceryItem(
      title: 'Banana',
      imagePath: 'assets/Images/Banana.png',
      price: 5,
      shortDescription: 'Perfect For Gym',
      source: 'Exported From Benin',

      longDescription:
          'A perfect Pre Workout meal and the optimal waiting time since you don\'t have to wait a while'),
  const GroceryItem(
      title: 'Pineapple',
      imagePath: 'assets/Images/Pinapple.png',
      source: 'Exported From Jordan',

      price: 5,
      shortDescription: 'Spicy and herby',
      longDescription:
          'The perfect fruit to mix with cocktails and different sweets make a pie with the family maybe and picked right from the farmer to your door step'),
];
