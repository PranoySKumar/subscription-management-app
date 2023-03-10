import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:product_app/data/dummy_data.dart';
import 'package:product_app/utils/asset_repo.dart';
import 'package:product_app/widgets/common/green_button.dart';
import 'package:product_app/widgets/delivery_agreement_screen.dart/delivery_list_item.dart';
import 'package:product_app/widgets/delivery_agreement_screen.dart/payment_info_card.dart';
import 'package:product_app/widgets/delivery_agreement_screen.dart/gift_card_poster.dart';

class DeliveryAgreementScreen extends StatelessWidget {
  const DeliveryAgreementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: theme.primaryColor, //change your color here
        ),
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
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (() => Navigator.pushNamed(context, "/giftcard-list")),
                    child: const GiftCardPoster()),
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
                GreenButton(
                  label: "Add More Products",
                  onPressed: (() => Navigator.pushNamed(context, "/product-list")),
                  icon: const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: Colors.white,
                  ),
                  width: 190,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                itemBuilder: ((context, i) => DeliveryListItem(
                      imageUrl: dummyData[i]['imageUrl'],
                    )),
                separatorBuilder: ((context, index) => const SizedBox(
                      height: 15,
                    )),
                itemCount: dummyData.length),
          )
        ],
      ),
    );
  }
}
