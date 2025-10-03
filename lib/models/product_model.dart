import 'package:myapp/models/category_model.dart';

class ProductModel {
  int id;
  String name;
  CategoryModel category;
  double price;
  String description;
  String image;
  double rating;
  int rateCount;
  List<String> sizes;

  ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.description,
    required this.image,
    required this.rateCount,
    required this.rating,
    required this.sizes,
  });

  @override
  String toString() {
    return 'ProductModel{id: $id, name: $name, category: $category, price: $price, description: $description, image: $image, rating: $rating, rateCount: $rateCount, sizes: $sizes}';
  }
}
