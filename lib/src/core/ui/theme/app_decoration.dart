import 'package:flutter/material.dart';

class AppDecoration {
  static const blacR16 = ShapeDecoration(
    color: Color(0xFF2F3035),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
  );
  static const blacR16Box4 = ShapeDecoration(
    color: Color(0xFF3E3F43),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    shadows: [
      BoxShadow(
        color: Color(0x3F000000),
        blurRadius: 4,
        offset: Offset(0, 4),
      )
    ],
  );
  static const blac50R16Box4 = ShapeDecoration(
    color: Color(0xFF2F3035),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
  );
  static const blacR30Box4 = BoxDecoration(
    color: Color.fromARGB(255, 72, 71, 71),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  );
  static const blac100R30Box4 = ShapeDecoration(
      color: Color(0xFF1D1E20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ));
  static const blac50Rl10r10 = BoxDecoration(
      color: Color.fromARGB(255, 92, 91, 91),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), topRight: Radius.circular(10)));
}
