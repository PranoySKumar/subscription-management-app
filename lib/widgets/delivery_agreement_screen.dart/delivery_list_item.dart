import 'package:flutter/material.dart';
import 'package:product_app/utils/asset_repo.dart';

class DeliveryListItem extends StatelessWidget {
  final String imageUrl;
  const DeliveryListItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Color.fromRGBO(0, 0, 51, 0.1), blurRadius: 25, spreadRadius: 0),
          ],
          borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _ProductInfoWidget(theme: theme),
              _ProductImageWidget(
                theme: theme,
                imageUrl: imageUrl,
              ),
            ],
          ),
          _DeliveryFrequencySelectionWidget(theme: theme),
          const _NextDeliveryWidget(),
        ],
      ),
    );
  }
}

class _ProductInfoWidget extends StatelessWidget {
  const _ProductInfoWidget({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Aloe vera Gelly",
          style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 22.5,
        ),
        const Text(
          "Price        : kr 213.00 ",
        ),
        const SizedBox(
          height: 19,
        ),
        _QuantityWidget(theme: theme),
        const SizedBox(
          height: 19,
        ),
        const Text(
          "To pay    : kr 426.00",
        )
      ],
    );
  }
}

class _NextDeliveryWidget extends StatelessWidget {
  const _NextDeliveryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text("Next Delivery             :"),
        SizedBox(
          width: 2,
        ),
        Expanded(child: Text("2 pcs in September 2022, then 2 pcs in november 2022"))
      ],
    );
  }
}

class _DeliveryFrequencySelectionWidget extends StatelessWidget {
  const _DeliveryFrequencySelectionWidget({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Delivery Frequency  :"),
        const SizedBox(
          width: 51,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
          decoration: BoxDecoration(
              border: Border.all(color: theme.primaryColorLight, width: 0.5),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(" 2 months"),
              SizedBox(
                width: 11,
              ),
              Icon(Icons.keyboard_arrow_down_rounded)
            ],
          ),
        )
      ],
    );
  }
}

class _ProductImageWidget extends StatelessWidget {
  final imageUrl;
  const _ProductImageWidget({
    Key? key,
    required this.theme,
    this.imageUrl,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 117,
          height: 143,
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26, width: 0.5),
              borderRadius: BorderRadius.circular(20)),
          child: Icon(
            Icons.delete_outline_rounded,
            size: 18,
            color: theme.primaryColor,
          ),
        )
      ],
    );
  }
}

class _QuantityWidget extends StatelessWidget {
  const _QuantityWidget({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Quantity : "),
        Row(
          children: [
            const _ItemButton(icon: Icons.add),
            const SizedBox(
              width: 10,
            ),
            Text(
              "2",
              style: theme.textTheme.bodySmall,
            ),
            const SizedBox(
              width: 10,
            ),
            const _ItemButton(icon: Icons.remove),
          ],
        ),
      ],
    );
  }
}

class _ItemButton extends StatelessWidget {
  final IconData icon;
  const _ItemButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      height: 17.6,
      width: 17.6,
      decoration:
          BoxDecoration(color: const Color(0xffFFEC89), borderRadius: BorderRadius.circular(20)),
      child: Icon(
        icon,
        size: 10,
        color: theme.primaryColor,
      ),
    );
  }
}
