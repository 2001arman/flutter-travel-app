import 'package:flutter/material.dart';
import 'package:flutter_travel_app/constants.dart';

class ItemHeader extends StatelessWidget {
  const ItemHeader({Key? key, required this.name, this.isActive = false})
      : super(key: key);

  final String name;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      child: Column(
        children: [
          Text(
            name,
            style: isActive
                ? yellowTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  )
                : whiteTextSyle.copyWith(
                    fontSize: 12,
                    color: kWhiteColor.withOpacity(0.5),
                  ),
          ),
          Container(
            width: 12,
            height: 2,
            margin: EdgeInsets.only(top: 3),
            color: isActive ? kYellowColor : Colors.transparent,
          )
        ],
      ),
    );
  }
}
