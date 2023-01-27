import 'package:flutter/material.dart';
import 'package:product_app/utils/asset_repo.dart';
import 'package:product_app/widgets/product_list_screen/product_list_item.dart';

List<Map<String, dynamic>> _listItems = [
  {"title": "Aloe vera Gelly", "imageUrl": AssetRepo.product1, "price": 213.00},
  {"title": "Aloe vera Gelly", "imageUrl": AssetRepo.product2, "price": 213.00},
  {"title": "Aloe vera Gelly", "imageUrl": AssetRepo.product3, "price": 213.00},
  {"title": "Aloe vera Gelly", "imageUrl": AssetRepo.product1, "price": 213.00},
  {"title": "Aloe vera Gelly", "imageUrl": AssetRepo.product1, "price": 213.00},
  {"title": "Aloe vera Gelly", "imageUrl": AssetRepo.product1, "price": 213.00},
  {"title": "Aloe vera Gelly", "imageUrl": AssetRepo.product1, "price": 213.00},
];

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Use the filter button or the search field to find a product you want to add.",
              style: theme.textTheme.titleMedium?.copyWith(backgroundColor: Colors.transparent),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemBuilder: ((context, i) => ProductListItem(
                    title: _listItems[i]["title"],
                    price: _listItems[i]["price"],
                    imageUrl: _listItems[i]["imageUrl"])),
                separatorBuilder: ((context, index) => const SizedBox(
                      height: 15,
                    )),
                itemCount: _listItems.length),
          )
        ],
      ),
    );
  }
}
