import 'package:flutter/material.dart';


class CustomPainterTop extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    final paint = Paint()..color = Colors.deepOrangeAccent;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 1;
    var paints = Offset.zero & size;
    paint.shader = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Colors.deepOrange[700]!,
        Colors.deepOrange[200]!,
      ],
    ).createShader(paints);
    path.moveTo(0, size.height);
    // path.lineTo(size.width * .2, size.height * .9);
    path.quadraticBezierTo(
        size.width * .10, size.height, size.width * 0.13, size.height * .6);
    path.quadraticBezierTo(
        size.width * .20, size.height * .20, size.width * .5, size.height * .4);
    path.quadraticBezierTo(
        size.width * .8, size.height * .53, size.width * .95, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}