import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nulis_app/utilities/resources.dart';
import 'package:nulis_app/utilities/styles.dart';

class PrimaryAppBar extends StatelessWidget {
  final String title;
  final Function onActionTap;
  const PrimaryAppBar({
    this.title,
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: NulisStyles.kTitleTextStyle.copyWith(
              color: NulisColorPalette.darkColor,
            ),
          ),
          SizedBox(
            width: 50.0,
            height: 50.0,
            child: RawMaterialButton(
              elevation: 0.0,
              focusElevation: 0.0,
              highlightElevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.white,
              splashColor: Colors.blueGrey[100],
              child: SvgPicture.asset(
                'assets/icons/setting.svg',
                width: 28.0,
                height: 28.0,
              ),
              onPressed: onActionTap,
            ),
          ),
        ],
      ),
    );
  }
}
