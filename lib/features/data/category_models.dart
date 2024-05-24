class CategoryModels {
  const CategoryModels({required this.images});
  final String images;
}

CategoryModels c1 = const CategoryModels(images: 'assets/tshirt.jpg');
CategoryModels c2 = const CategoryModels(images: 'assets/tshirt2.webp');
CategoryModels c3 = const CategoryModels(images: 'assets/tshirt3.jpeg');
CategoryModels c4 = CategoryModels(images: 'assets/tshirt4.jpeg');
CategoryModels c5 = CategoryModels(images: 'assets/tshirt5.jpeg');

List<CategoryModels> categoriesList = [c1, c2, c3, c4, c5];
