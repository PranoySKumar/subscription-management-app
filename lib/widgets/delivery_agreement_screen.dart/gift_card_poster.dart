import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:product_app/utils/asset_repo.dart';

class GiftCardPoster extends StatelessWidget {
  final double _borderRadius = 3;
  const GiftCardPoster({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return DottedBorder(
        color: const Color(0xffFCB043),
        strokeWidth: 2,
        radius: Radius.circular(_borderRadius),
        dashPattern: const [6, 5],
        customPath: (size) {
          return Path()
            ..moveTo(_borderRadius, 0)
            ..lineTo(size.width - _borderRadius, 0)
            ..arcToPoint(Offset(size.width, _borderRadius), radius: Radius.circular(_borderRadius))
            ..lineTo(size.width, size.height - _borderRadius)
            ..arcToPoint(Offset(size.width - _borderRadius, size.height),
                radius: Radius.circular(_borderRadius))
            ..lineTo(_borderRadius, size.height)
            ..arcToPoint(Offset(0, size.height - _borderRadius),
                radius: Radius.circular(_borderRadius))
            ..lineTo(0, _borderRadius)
            ..arcToPoint(Offset(_borderRadius, 0), radius: Radius.circular(_borderRadius));
        },
        child: SizedBox(
          width: 246,
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AssetRepo.gift,
                width: 87,
                height: 75,
              ),
              const SizedBox(
                width: 28,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You have a",
                    style: theme.textTheme.bodyLarge,
                  ),
                  Text(
                    "Gift Card",
                    style: theme.textTheme.bodyLarge
                        ?.copyWith(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 18),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3), color: const Color(0xffFFEC89)),
                    child: Row(
                      children: [
                        Text(
                          "Know more",
                          style: theme.textTheme.bodySmall?.copyWith(fontSize: 10),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 10,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
