library awesome_bookmark_icon_button;

import 'package:flutter/material.dart';

class BookMarkIconButton extends StatefulWidget {
  const BookMarkIconButton({
    Key? key,
    required this.onPressed,
    required this.isSaved,
    this.constraints,
    this.iconSize,
    required this.padding,
  }) : super(key: key);

  final VoidCallback onPressed;
  final bool isSaved;
  final BoxConstraints? constraints;
  final double? iconSize;
  final EdgeInsetsGeometry padding;

  @override
  State<BookMarkIconButton> createState() => _BookMarkIconButtonState();
}

class _BookMarkIconButtonState extends State<BookMarkIconButton> {
  late var isSaved = false;

  @override
  void initState() {
    isSaved = widget.isSaved;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: widget.constraints,
      iconSize: widget.iconSize,
      padding: widget.padding,
      onPressed: () {
        setState(
          () {
            isSaved = !isSaved;
          },
        );
        widget.onPressed.call();
      },
      icon: isSaved
          ? const Icon(Icons.bookmark)
          : const Icon(
              Icons.bookmark_outline_rounded,
            ),
    );
  }
}
