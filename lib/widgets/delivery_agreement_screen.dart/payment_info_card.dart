import 'package:flutter/material.dart';
import 'package:product_app/utils/asset_repo.dart';

class PaymentInfoCard extends StatelessWidget {
  const PaymentInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 16, top: 10, left: 24, right: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: const Color.fromRGBO(127, 211, 19, 0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const _SingleInfoItem(
            imageUrl: AssetRepo.cardboardBox,
            info: "Next Delivery   : August",
            imageWidth: 72.72,
            imageHeight: 48.7,
          ),
          Container(
            width: 1,
            height: 75,
            color: const Color(0xffBFE989),
          ),
          const _SingleInfoItem(
            imageUrl: AssetRepo.wallet,
            info: "To Pay    : 910,00 kr",
            imageWidth: 72.72,
            imageHeight: 50.79,
          )
        ],
      ),
    );
  }
}

class _SingleInfoItem extends StatelessWidget {
  final String imageUrl;
  final double imageWidth;
  final double imageHeight;
  final String info;
  const _SingleInfoItem(
      {super.key,
      required this.imageUrl,
      required this.info,
      required this.imageWidth,
      required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          imageUrl,
          width: imageWidth,
          height: imageHeight,
        ),
        Text(
          info,
          style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
