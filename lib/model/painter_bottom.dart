import 'package:flutter/material.dart';

class CustomPainterBottom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path=Path();
    final paint = Paint();
    paint.color = Colors.blue;
    paint.strokeWidth = 1.0;
    paint.style = PaintingStyle.fill;
    var paints = Offset.zero & size;
    paint.shader =  LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Colors.blue[700]!,
        Colors.blue[200]!,
      ],
    ).createShader(paints);
    path.moveTo(size.width,size.height);
    path.quadraticBezierTo(size.width*0.9993750,size.height*0.2475000,size.width,0);
    path.cubicTo(size.width*0.9626625,size.height*0.7972000,size.width*0.2880875,size.height*0.1582000,size.width*0.0896875,size.height*0.8635000);
    path.quadraticBezierTo(size.width*0.0525750,size.height*0.9513500,size.width*0.0862500,size.height*0.9966500);
    path.lineTo(size.width,size.height);
    path.close();

    canvas.drawPath(path, paint);








  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
