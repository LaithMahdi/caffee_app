import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/models/product_model.dart';

import '../widgets/primary_button.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  late ProductModel product;
  String? selectedSize;
  bool? hasTakeAway;

  @override
  void didChangeDependencies() {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    product = args['product'];
    print("product $product");
    super.didChangeDependencies();
  }

  void onSelectedSize(String size) {
    selectedSize = size;
    setState(() {});
  }

  void onTakeAwayChange(bool value) {
    hasTakeAway = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff242424),
            size: 18,
          ),
        ),
        title: Text(
          "Detail",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff242424),
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/images/heart.svg"),
          ),
          SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  product.image,
                  height: 285,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 23),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff242424),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 7,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          color: kPrimaryColor.withValues(alpha: .3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(
                          product.category.name,
                          style: TextStyle(fontSize: 12, color: kPrimaryColor),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      SvgPicture.asset(
                        "assets/images/star.svg",
                        width: 20,
                        height: 20,
                      ),
                      Text.rich(
                        TextSpan(
                          text: "${product.rating}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2A2A2A),
                          ),
                          children: [
                            TextSpan(
                              text: " (${product.rateCount})",
                              style: TextStyle(
                                color: Color(0xffA2A2A2),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductDetailIcon(icon: "assets/images/delivery.png"),
                  ProductDetailIcon(icon: "assets/images/caffe_icon.png"),
                  ProductDetailIcon(icon: "assets/images/milk.png"),
                ],
              ),
              ProductDetailDivider(),
              ProductDetailTitle(title: "Description"),
              SizedBox(height: 8),
              Text(
                product.description,
                style: TextStyle(fontSize: 14, color: Color(0xffA2A2A2)),
              ),
              ProductDetailDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductDetailTitle(title: "Sizes"),
                  Row(
                    spacing: 10,
                    children: List.generate(product.sizes.length, (index) {
                      final size = product.sizes[index];
                      return InkWell(
                        onTap: () {
                          onSelectedSize(size);
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: selectedSize == size
                                ? Color(0xffF9F2ED)
                                : Colors.white,
                            border: Border.all(
                              color: selectedSize == size
                                  ? kPrimaryColor
                                  : Color(0xffE3E3E3),
                            ),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Text(
                            size,
                            style: TextStyle(
                              fontSize: 14,
                              color: selectedSize == size
                                  ? kPrimaryColor
                                  : Color(0xff242424),
                              fontWeight: selectedSize == size
                                  ? FontWeight.w600
                                  : null,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
              ProductDetailDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductDetailTitle(title: "Drink In / Take away"),
                  Row(
                    spacing: 20,
                    children: [
                      ProductDetailButton(
                        icon: "assets/images/drink_in.svg",
                        ontap: () {
                          onTakeAwayChange(false);
                        },
                        isActive: hasTakeAway == false || hasTakeAway == null,
                      ),
                      ProductDetailButton(
                        icon: "assets/images/take_away.svg",
                        ontap: () {
                          onTakeAwayChange(true);
                        },
                        isActive: hasTakeAway == true || hasTakeAway == null,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        height: 90,
        child: Row(
          spacing: 34,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Price",
                  style: TextStyle(fontSize: 14, color: Color(0xff909090)),
                ),
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Expanded(
              child: PrimaryButton(title: "Buy Now", onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetailButton extends StatelessWidget {
  const ProductDetailButton({
    super.key,
    required this.icon,
    required this.ontap,
    required this.isActive,
  });

  final String icon;
  final bool isActive;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Opacity(
        opacity: isActive ? 1 : 0.5,
        child: SvgPicture.asset(icon),
      ),
    );
  }
}

class ProductDetailTitle extends StatelessWidget {
  const ProductDetailTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xff242424),
      ),
    );
  }
}

class ProductDetailDivider extends StatelessWidget {
  const ProductDetailDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Divider(color: Color(0xffE3E3E3)),
    );
  }
}

class ProductDetailIcon extends StatelessWidget {
  const ProductDetailIcon({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xffEDEDED).withValues(alpha: .35),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(icon, width: 26, height: 26),
    );
  }
}
