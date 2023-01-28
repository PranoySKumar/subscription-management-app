import 'package:flutter/material.dart';
import 'package:product_app/widgets/common/green_button.dart';
import 'package:product_app/widgets/delivery_agreement_screen.dart/delivery_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Text('hello world'),
          DeliveryListItem(),
        ]),
      ),
    );
  }
}
