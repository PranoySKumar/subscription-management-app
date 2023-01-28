import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:product_app/utils/asset_repo.dart';
import 'package:product_app/widgets/common/green_button.dart';
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
          children: [
            const GiftCardPoster(),
            const SizedBox(
              height: 10,
            ),
            const PaymentInfoCard(),
            const SizedBox(
              height: 7,
            ),
            Text(
              "You will receive your payment info on e-mail and sms.",
              style: theme.textTheme.bodySmall,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.info_outline,
                  size: 16,
                  color: theme.primaryColorLight,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Any changes will apply from and including August",
                  style: theme.textTheme.bodySmall?.copyWith(color: theme.primaryColorLight),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_box_outline_blank_rounded,
                  size: 16,
                  color: theme.primaryColorLight,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "See only next month delivery plan",
                  style: theme.textTheme.bodySmall?.copyWith(color: theme.primaryColor),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const GreenButton(
              label: "Add More Products",
              icon: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.white,
              ),
              width: 190,
            )
          ],
        ),
      ),
    );
  }
}
