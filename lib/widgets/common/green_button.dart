import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final String label;
  final Icon? icon;
  final double? width;
  final VoidCallback? onPressed;
  const GreenButton({super.key, required this.label, this.icon, this.width, this.onPressed});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.primaryColorLight,
        elevation: 1,
        shadowColor: const Color(0xFFAAAACC),
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 9),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: SizedBox(
        width: width ?? 97,
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
