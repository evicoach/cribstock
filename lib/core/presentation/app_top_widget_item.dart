import 'package:flutter/material.dart';

import '../../utility/ui_utils.dart';

class AppTopWidgetItem extends StatefulWidget {
  final Widget icon;
  final String? title;
  final void Function()? handler;

  AppTopWidgetItem({
    required this.icon,
    this.handler,
    this.title,
  });

  @override
  State<AppTopWidgetItem> createState() => _AppTopWidgetItemState();
}

class _AppTopWidgetItemState extends State<AppTopWidgetItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.handler,
      child: Column(
        children: [
          widget.icon,
          const SizedBox(height: 7),
          if (widget.title != null)
            Text(
              widget.title!,
              style: TextStyle(
                  fontSize: scaledFontSize(8, context),
                  fontWeight: FontWeight.w400),
            )
        ],
      ),
    );
  }
}