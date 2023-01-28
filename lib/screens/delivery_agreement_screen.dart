import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:product_app/utils/asset_repo.dart';
import 'package:product_app/widgets/delivery_agreement_screen.dart/payment_info_card.dart';
import 'package:product_app/widgets/delivery_agreement_screen.dart/gift_card_poster.dart';

class DeliveryAgreementScreen extends StatelessWidget {
  const DeliveryAgreementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: theme.scaffoldBackgroundColor,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetRepo.handShakeIcon,
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Delivery Agreement",
              style: theme.textTheme.titleLarge,
            )
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            GiftCardPoster(),
            SizedBox(
              height: 10,
            ),
            PaymentInfoCard()
          ],
        ),
      ),
    );
  }
}
