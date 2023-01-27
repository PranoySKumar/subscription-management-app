import 'package:flutter/material.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
          border: Border.all(color: theme.primaryColorLight, width: 0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: theme.primaryColor,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            "Search...",
            style:
                theme.textTheme.bodyMedium?.copyWith(color: const Color.fromRGBO(0, 56, 19, 0.5)),
          )
        ],
      ),
    );
  }
}
