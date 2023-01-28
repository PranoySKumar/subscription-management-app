import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/asset_repo.dart';

class SearchBarTextField extends HookWidget {
  final editingController = TextEditingController();
  SearchBarTextField({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    useEffect(() {
      return () {
        editingController.dispose();
      };
    }, []);
    return SizedBox(
      height: 40,
      child: TextField(
        controller: editingController,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: "Search...",
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          hintStyle:
              theme.textTheme.bodyMedium?.copyWith(color: const Color.fromRGBO(0, 56, 19, 0.5)),
          prefixIcon: SvgPicture.asset(
            AssetRepo.searchIcon,
            fit: BoxFit.scaleDown,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.5,
                color: theme.primaryColorLight,
              ),
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 0.5,
              color: theme.primaryColorLight,
            ),
          ),
        ),
      ),
    );
  }
}
