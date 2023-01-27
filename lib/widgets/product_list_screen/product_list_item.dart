import 'package:flutter/material.dart';
import 'package:product_app/utils/asset_repo.dart';
import 'package:product_app/widgets/product_list_screen/add_product_button.dart';

class ProductListItem extends StatelessWidget {
  final String title;
  final double price;
  final String imageUrl;

  const ProductListItem(
      {super.key, required this.title, required this.price, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(14)),
        boxShadow: [
          BoxShadow(color: Color.fromARGB(24, 0, 51, 26), blurRadius: 25, spreadRadius: 0),
        ],
      ),
      height: 156,
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                "Price : kr $price",
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 23,
              ),
              const AddProductButton()
            ],
          ),
          Image.asset(
            imageUrl,
          )
        ],
      )),
    );
  }
}
