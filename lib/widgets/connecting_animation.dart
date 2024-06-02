import 'package:flutter/material.dart';

class ConnectingAnimation extends StatefulWidget {
  final Duration animationDuration;
  final bool inReverse;

  const ConnectingAnimation({
    super.key,
    required this.animationDuration,
    this.inReverse = false,
  });

  @override
  State<ConnectingAnimation> createState() => _ConnectingAnimationState();
}

class _ConnectingAnimationState extends State<ConnectingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(animation),
      child: const SizedBox(
        width: 100,
        height: 100,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    animation = Tween<double>(
      begin: widget.inReverse ? 1.0 : 0.0,
      end: widget.inReverse ? 0.0 : 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.linear,
      ),
    );

    controller.repeat(reverse: true);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

/// The painter to draw lines.
class LinePainter extends CustomPainter {
  final Animation<double> animation;

  LinePainter(this.animation) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0;

    // print(animation.value);

    // Draw a line that animates its length
    // canvas.drawLine(Offset(0, 0), Offset(20, 20), paint);
    // final path = Path();
    // path.moveTo(0, 0);
    // path.lineTo((size.width - 20) * animation.value,
    //     ze.height - 20) * animation.value);

    // canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
