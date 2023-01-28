import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:product_app/utils/asset_repo.dart';

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
    );
  }
}
