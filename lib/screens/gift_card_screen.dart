import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:product_app/utils/asset_repo.dart';
import 'package:product_app/widgets/product_list_screen/product_list_item.dart';

import '../data/dummy_data.dart';
import '../widgets/product_list_screen/product_search_bar.dart';

class ProductListWithGiftCardScreen extends StatelessWidget {
  const ProductListWithGiftCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: theme.primaryColor, //change your color here
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: [
          Image.asset(AssetRepo.giftCard),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Text(
                  "Use the filter button or the search field to find a product you want to add.",
                  style: theme.textTheme.titleMedium?.copyWith(backgroundColor: Colors.transparent),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    // const Expanded(child: ProductSearchBar()),
                    Expanded(child: SearchBarTextField()),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      AssetRepo.filterIcon,
                      width: 38,
                      height: 38,
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                itemBuilder: ((context, i) => ProductListItem(
                    title: dummyData[i]["title"],
                    price: dummyData[i]["price"],
                    imageUrl: dummyData[i]["imageUrl"])),
                separatorBuilder: ((context, index) => const SizedBox(
                      height: 15,
                    )),
                itemCount: dummyData.length),
          )
        ],
      ),
    );
  }
}
