import 'package:flutter/material.dart';

class HoverAnimatedContainer extends StatefulWidget {
  final double width;
  final double height;
  final Widget child;

  const HoverAnimatedContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
  }) : super(key: key);

  @override
  _HoverAnimatedContainerState createState() => _HoverAnimatedContainerState();
}

class _HoverAnimatedContainerState extends State<HoverAnimatedContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHover(true),
      onExit: (_) => _setHover(false),
      child: AnimatedContainer(
        curve: Curves.easeInOut,  
        duration: const Duration(milliseconds: 300),
        width: widget.width,
        height: widget.height,
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: _isHovered
                ? [Colors.blue.shade400, Colors.pink.shade400]
                : [Colors.blue, Colors.pink],
          ),
          boxShadow: [
            BoxShadow(
              color: _isHovered ? Colors.blue : Colors.pink,
              offset: const Offset(-2, 0),
              blurRadius:_isHovered? 25 : 20,
            ),
            BoxShadow(
              color: _isHovered ? Colors.pink : Colors.blue,
              offset: const Offset(2, 0),
              blurRadius: _isHovered ? 25 : 20,
            ),
          ],
        ),
        child: widget.child,
      ),
    );
  }

  void _setHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}