import 'package:flutter/material.dart';
import 'package:nulis_app/utilities/resources.dart';
import 'package:nulis_app/utilities/styles.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool validate;
  final Function onSubmitted;
  final String hint;

  const SearchBar({
    @required this.controller,
    @required this.focusNode,
    @required this.validate,
    @required this.onSubmitted,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      focusNode: focusNode,
      controller: controller,
      cursorColor: NulisColorPalette.primaryColor,
      decoration: NulisStyles.inputDecorationStyle.copyWith(
        fillColor: Colors.white,
        hintText: hint,
        hintStyle: NulisStyles.kBodyTextStyle.copyWith(
          color: NulisColorPalette.disableColor,
        ),
        alignLabelWithHint: true,
        contentPadding: const EdgeInsets.all(10.0),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ImageIcon(
            Svg(
              'assets/icons/search.svg',
              color: NulisColorPalette.disableColor,
            ),
            size: 28.0,
          ),
        ),
      ),
      onSubmitted: onSubmitted,
    );
  }
}
