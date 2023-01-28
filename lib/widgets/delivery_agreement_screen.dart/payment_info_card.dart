import 'package:flutter/material.dart';
import 'package:product_app/utils/asset_repo.dart';

class PaymentInfoCard extends StatelessWidget {
  const PaymentInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(bottom: 16, top: 10, left: 24, right: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: const Color.fromRGBO(127, 211, 19, 0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                AssetRepo.cardboardBox,
                width: 72.72,
                height: 48.7,
              ),
              Text(
                "Next Delivery   : August",
                style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
              )
            ],
          ),
          const VerticalDivider(
            width: 0.5,
            color: Color(0xffBFE989),
          ),
          Column(
            children: [
              Image.asset(
                AssetRepo.wallet,
                width: 72.72,
                height: 50.79,
              ),
              Text(
                "To Pay    : 910,00 kr",
                style: theme.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }
}
