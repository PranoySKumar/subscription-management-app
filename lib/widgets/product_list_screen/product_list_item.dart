import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Center(
          child: Column(
        children: const [
          Text("Aloe vera Gelly"),
          Text("Price : kr 213.00"),
        ],
      )),
    );
  }
}
