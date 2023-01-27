import 'package:flutter/material.dart';

class AddProductButton extends StatelessWidget {
  const AddProductButton({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.primaryColorLight,
        elevation: 2,
        shadowColor: const Color(0xFFAAAACC),
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 9),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Text(
        "Add Product",
        style: theme.textTheme.titleMedium?.copyWith(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
