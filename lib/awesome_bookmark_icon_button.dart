library awesome_bookmark_icon_button;

import 'package:flutter/material.dart';

class BookMarkIconButton extends StatefulWidget {
  const BookMarkIconButton({
    Key? key,
    required this.onPressed,
    required this.isSaved,
  }) : super(key: key);

  final VoidCallback onPressed;
  final bool isSaved;
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
