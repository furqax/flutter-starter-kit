import 'package:flutter/material.dart';
import 'package:starter_kit/resource/colors.dart';
import 'package:flutter/services.dart';

class SubmitButton extends StatefulWidget {
  final double? height;
  final double? width;
  final Color? col;
  final String? headTextEnglish;
  final double fontsize;
  final Color? textcol;
  final VoidCallback? onPress;

  const SubmitButton({
    Key? key,
    this.height,
    this.width,
    this.fontsize = 12,
    this.col,
    this.headTextEnglish,
    this.textcol,
    this.onPress,
  }) : super(key: key);

  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _animationController.forward();
  }

  void _resetAnimation() {
    _animationController.reverse();
  }

  void _vibrate() {
    HapticFeedback.vibrate();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: SizedBox(
        width: widget.width,
        height: widget.height ?? 22,
        child: AnimatedBuilder(
          animation: _scaleAnimation,
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleAnimation.value,
              child: Material(
                color: widget.col ?? Col.lightPrimary,
                borderRadius: BorderRadius.circular(20.0),
                child: InkWell(
                  onTap: () {
                    _startAnimation();
                    _vibrate();
                    widget.onPress?.call();
                    Future.delayed(const Duration(milliseconds: 200), () {
                      _resetAnimation();
                    });
                  },
                  borderRadius: BorderRadius.circular(20.0),
                  child: Text("${widget.headTextEnglish} /",
                      style: TextStyle(
                        fontFamily: "MontMedium",
                        fontSize: widget.fontsize,
                        color: widget.col ?? Col.lightPrimary,
                      )),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
