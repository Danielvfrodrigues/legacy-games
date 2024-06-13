import 'package:flutter/material.dart';

class WidgetMedium extends StatelessWidget {
  final String bigText;
  final String smallText;
  final Color? backgroundColor;
  final Color? bigTextColor;
  final Color? smallTextColor;
  final bool wonFirst;
  final bool wonSecond;
  final bool wonThird;

  final Future<dynamic> Function() onTap;

  const WidgetMedium({
    super.key,
    required this.bigText,
    required this.smallText,
    required this.onTap,
    this.backgroundColor,
    this.bigTextColor,
    this.smallTextColor,
    this.wonFirst = false,
    this.wonSecond = false,
    this.wonThird = false,
  });

  @override
  Widget build(BuildContext context) {

    String trophyOutline = "assets/images/trophy-outline.png";
    String trophy = "assets/images/trophy-gold.png";

    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: backgroundColor ?? const Color(0X25FFFFFF),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 1,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),

        // Child
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text Big
            Text(
              bigText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: bigTextColor,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Image.asset(wonFirst ? trophy : trophyOutline)),
                  Expanded(child: Image.asset(wonSecond ? trophy : trophyOutline)),
                  Expanded(child: Image.asset(wonThird ? trophy : trophyOutline)),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text Small
                Container(
                  padding: const EdgeInsets.only(right: 2),
                  child: Text(
                    "Pontos $smallText",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0X25FFFFFF),
                    ),
                  ),
                ),

                // // Icon
                // Container(
                //   padding: const EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(100),
                //   ),
                //   child: const Icon(
                //     Icons.chevron_right_rounded,
                //     size: 28,
                //     color: Colors.deepPurple,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
