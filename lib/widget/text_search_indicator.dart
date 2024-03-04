import 'package:flutter/material.dart';

class Text_CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _Text_CustomTabIndicatorPainter(this, onChanged);
  }
}

class _Text_CustomTabIndicatorPainter extends BoxPainter {
  final Text_CustomTabIndicator decoration;

  _Text_CustomTabIndicatorPainter(this.decoration, VoidCallback? onChanged)
      : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    double indicatorWidth = 57;
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
