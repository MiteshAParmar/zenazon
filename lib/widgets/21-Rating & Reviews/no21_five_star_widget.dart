import 'package:flutter/material.dart';
import 'package:zenazon/app/utility/consts.dart';

class No21FiveStarWidget extends StatefulWidget {
  final double iconSize;
  final Color filledStarColor;
  final Color unfilledStarColor;

  const No21FiveStarWidget({
    super.key,
    this.iconSize = 30.0, // Default size
    this.filledStarColor =
        const Color.fromRGBO(255, 168, 73, 1), // Default filled color
    this.unfilledStarColor = Colors.grey, // Default unfilled color
  });

  @override
  State<No21FiveStarWidget> createState() => _No21FiveStarWidgetState();
}

class _No21FiveStarWidgetState extends State<No21FiveStarWidget> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = List.generate(5, (index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            rating = (rating == index + 1) ? 0 : index + 1;
          });
        },
        child: Icon(
          index < rating ? Icons.star : Icons.star_border,
          color: index < rating
              ? widget.filledStarColor
              : widget.unfilledStarColor,
          size: widget.iconSize,
        ),
      );
    });

    return Wrap(
      children: stars,
    );
  }
}
