import 'package:flutter/material.dart';

class InvestmentItem extends StatelessWidget {
  final Widget icon;
  final Text name;
  final Text shares;
  final Text shareAmount;
  final List<Widget> shareChange;
  final BorderRadius? iconRadius;

  const InvestmentItem({
    required this.icon,
    required this.name,
    required this.shareAmount,
    required this.shareChange,
    required this.shares,
    this.iconRadius,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: iconRadius,
            child: icon,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [name, const SizedBox(height: 10), shares],
          ),
          const Spacer(),
          Column(
            children: [
              shareAmount,
              Row(
                children: shareChange,
              )
            ],
          )
        ],
      ),
    );
  }
}