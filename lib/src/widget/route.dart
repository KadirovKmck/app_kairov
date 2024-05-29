import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RouteWidget extends StatelessWidget {
  const RouteWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.color});
  final String imagePath;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            width: 60,
            height: 60,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: SizedBox(
                    child: SvgPicture.asset(
                      'assets/icons/$imagePath.svg',
                      width: 33,
                      height: 33,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 70,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
