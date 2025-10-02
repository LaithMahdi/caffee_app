import 'package:myapp/models/product_model.dart';
import '../models/category_model.dart';

final List<CategoryModel> categories = [
  CategoryModel(id: 1, name: "Macchiato"),
  CategoryModel(id: 2, name: "Latte"),
  CategoryModel(id: 3, name: "Americano"),
];

final List<ProductModel> products = [
  ProductModel(
    id: 1,
    name: "Caffè Mocha",
    category: categories[1], // Latte
    price: 4.50,
    description: "A delicious blend of espresso, steamed milk, and chocolate.",
    image: "assets/images/cafe_1.png",
    sizes: ["Small", "Medium", "Large"],
    rating: 4.6,
    rateCount: 120,
  ),
  ProductModel(
    id: 2,
    name: "Flat White",
    category: categories[1], // Latte
    price: 4.00,
    description: "Smooth espresso topped with velvety steamed milk.",
    image: "assets/images/cafe_2.png",
    sizes: ["Small", "Medium", "Large"],
    rating: 4.4,
    rateCount: 95,
  ),
  ProductModel(
    id: 3,
    name: "Mocha Fusi",
    category: categories[0], // Macchiato
    price: 5.00,
    description: "A fusion mocha with bold espresso and rich chocolate.",
    image: "assets/images/cafe_3.png",
    sizes: ["Small", "Medium", "Large"],
    rating: 4.7,
    rateCount: 80,
  ),
  ProductModel(
    id: 4,
    name: "Caffè Panna",
    category: categories[2], // Americano
    price: 4.20,
    description: "Espresso with a topping of whipped cream for extra delight.",
    image: "assets/images/cafe_4.png",
    sizes: ["Small", "Medium", "Large"],
    rating: 4.5,
    rateCount: 110,
  ),
];
