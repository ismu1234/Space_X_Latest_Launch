import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile({
    Key? key,
    this.collapsedTextColor,
    required this.textColor,
    required this.expansionTitle,
    this.children,
    this.subTitle,
    this.backgroundColor,
    this.collapsedBackgroundColor,
    this.initiallyExpanded = false,
    this.onExpansionChanged,
    this.titleColor,
  }) : super(key: key);

  final Color? collapsedTextColor;
  final Color textColor;

  final Color? backgroundColor;
  final Color? collapsedBackgroundColor;
  final bool initiallyExpanded;
  final void Function(bool)? onExpansionChanged;

  final String expansionTitle;

  final Widget? subTitle;
  final Color? titleColor;

  final List<Widget>? children;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        onExpansionChanged: widget.onExpansionChanged,
        initiallyExpanded: widget.initiallyExpanded,
        backgroundColor: widget.backgroundColor,
        collapsedBackgroundColor: widget.collapsedBackgroundColor,
        collapsedTextColor: widget.collapsedTextColor,
        textColor: widget.textColor,
        tilePadding: EdgeInsets.all(6.w),
        childrenPadding: EdgeInsets.all(3.w),
        title: Text(
          widget.expansionTitle,
          style: TextStyle(
              color: widget.titleColor,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        subtitle: widget.subTitle,
        children: widget.children!);
  }
}
