import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/data/dummy.dart';
import 'package:myapp/models/category_model.dart';
import 'package:myapp/screens/product_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> data = categories;

  @override
  void initState() {
    data.insert(0, CategoryModel(id: 0, name: "All Coffee", isSelected: true));
    super.initState();
  }

  void onCategoryChange(CategoryModel category) {
    for (var e in data) {
      e.isSelected = false;
    }
    category.isSelected = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 16),
            Row(
              spacing: 16,
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffE9E9E9),
                      contentPadding: EdgeInsets.all(16),
                      hintText: "Search coffee",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xffA2A2A2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.red.shade600),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 12, 8, 12),
                        child: SvgPicture.asset(
                          "assets/images/search.svg",
                          colorFilter: ColorFilter.mode(
                            Color(0xff594040),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/images/grid.svg"),
                  style: IconButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 31),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 16,
                children: List.generate(data.length, (index) {
                  final category = data[index];
                  return InkWell(
                    onTap: () {
                      onCategoryChange(category);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: category.isSelected
                            ? kPrimaryColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        category.name,
                        style: TextStyle(
                          fontSize: 14,
                          color: category.isSelected
                              ? Colors.white
                              : Color(0xff313131),
                          fontWeight: category.isSelected
                              ? FontWeight.w600
                              : null,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 15,
                  childAspectRatio: 156 / 238,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/product-detail",
                        arguments: {'product': product},
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xffEEEEEE)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(9),
                              child: Image.asset(
                                product.image,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            product.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff242424),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            product.category.name,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffA2A2A2),
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$${product.price}",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff050505),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              IconButton.filled(
                                onPressed: () {},
                                icon: Icon(Icons.add, color: Colors.white),
                                style: IconButton.styleFrom(
                                  backgroundColor: kPrimaryColor,
                                  foregroundColor: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
