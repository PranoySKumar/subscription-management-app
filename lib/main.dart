import 'package:flutter/material.dart';
import 'package:product_app/screens/delivery_agreement_screen.dart';
import 'package:product_app/screens/gift_card_screen.dart';
import 'package:product_app/screens/home_screen.dart';
import 'package:product_app/screens/product_list_screen.dart';
import 'package:product_app/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightThemeData,
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/product-list": ((context) => const ProductListScreen()),
        "/delivery-agreement-list": ((context) => const DeliveryAgreementScreen()),
        "/giftcard-list": ((context) => const ProductListWithGiftCardScreen())
      },
    );
  }
}
