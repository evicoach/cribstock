import 'package:flutter/cupertino.dart';

class AccountAction extends StatelessWidget {
  final String title;
  final Widget icon;
  final void Function()? handler;

  const AccountAction({
    required this.title,
    required this.icon,
    this.handler,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handler,
      child: Column(
        children: [icon, Text(title)],
      ),
    );
  }
}