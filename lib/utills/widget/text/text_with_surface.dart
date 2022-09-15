import 'package:boilerplate_getx_flutter/utills/helper/constant.dart';
import 'package:boilerplate_getx_flutter/utills/widget/text/text_inter.dart';
import 'package:flutter/material.dart';

class TextWithSurface extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color surfaceColor;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  TextWithSurface({
    required this.text,
    required this.textColor,
    required this.surfaceColor,
    this.borderRadius,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8)),
        color: surfaceColor,
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.fromLTRB(8, 4, 8, 4),
        child: TextInter(
            size: 12,
            color: textColor,
            fontWeight: Weightenum.regular,
            text: text),
      ),
    );
  }
}
