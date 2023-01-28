import 'package:flutter/material.dart';
import 'package:product_app/widgets/common/green_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: theme.primaryColor, //change your color here
        ),
        elevation: 0,
        title: Text(
          "Home",
          style: theme.textTheme.titleLarge,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GreenButton(
            width: 200,
            label: "To Product List Screen",
            onPressed: (() => Navigator.pushNamed(context, "/product-list")),
          ),
          GreenButton(
            width: 200,
            label: "To Gift Card Screen",
            onPressed: (() => Navigator.pushNamed(context, "/giftcard-list")),
          ),
          GreenButton(
            width: 200,
            label: "To Delivery List Screen",
            onPressed: (() => Navigator.pushNamed(context, "/delivery-agreement-list")),
          ),
        ]),
      ),
    );
  }
}
