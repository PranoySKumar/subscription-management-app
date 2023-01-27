import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text(
            "Use the filter button or the search field to find a product you want to add.",
            style: theme.textTheme.bodyMedium?.copyWith(
              color: const Color(0xff003813),
            ),
          )
        ],
      ),
    );
  }
}
