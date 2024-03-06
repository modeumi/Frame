import 'package:flutter/material.dart';

class Community_CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _Community_CustomTabIndicatorPainter(this, onChanged);
  }
}

class _Community_CustomTabIndicatorPainter extends BoxPainter {
  final Community_CustomTabIndicator decoration;

  _Community_CustomTabIndicatorPainter(this.decoration, VoidCallback? onChanged)
      : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    double indicatorWidth = 80;
    double indicatorHeight = 3.0;

    final Rect rect = Rect.fromCenter(
      center: Offset(
        offset.dx + (configuration.size!.width / 2),
        offset.dy + configuration.size!.height - (indicatorHeight / 2),
      ),
      width: indicatorWidth,
      height: indicatorHeight,
    );

    final Paint paint = Paint()
      ..color = Color(0xFF000000)
      ..strokeWidth = indicatorHeight
      ..strokeCap = StrokeCap.square;

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        rect,
      ),
      paint,
    );
  }
}
