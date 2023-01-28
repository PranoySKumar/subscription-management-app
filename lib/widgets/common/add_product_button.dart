import 'package:flutter/material.dart';

class AddProductButton extends StatelessWidget {
  final String label;
  final Icon? icon;
  final double? width;
  const AddProductButton({super.key, required this.label, this.icon, this.width});

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
      child: SizedBox(
        width: width ?? 127,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: theme.textTheme.titleMedium?.copyWith(color: Colors.white, fontSize: 18),
            ),
            if (icon != null)
              const SizedBox(
                width: 24,
              ),
            if (icon != null)
              const Icon(
                Icons.keyboard_arrow_right_outlined,
                color: Colors.white,
              )
          ],
        ),
      ),
    );
  }
}
