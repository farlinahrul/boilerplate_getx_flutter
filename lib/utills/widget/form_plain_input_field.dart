import 'package:boilerplate_getx_flutter/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPlainInputField extends StatelessWidget {
  const FormPlainInputField({
    Key? key,
    this.controller,
    required this.labelText,
    required this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.enabled = true,
    this.fontSize = 14,
    this.minLines = 1,
    this.maxLines,
    this.backgroundColor,
    this.onChanged,
    required this.onSaved,
    this.isBordered,
    this.onTap,
    this.initialValue,
    this.inputFormaters = const [],
  }) : super(key: key);

  final TextEditingController? controller;
  final String labelText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool enabled;
  final double? fontSize;
  final int minLines;
  final int? maxLines;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final Color? backgroundColor;
  final bool? isBordered;
  final Function? onTap;
  final String? initialValue;
  final List<TextInputFormatter> inputFormaters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: (isBordered != null && isBordered == false)
          ? InputDecoration(
              fillColor: backgroundColor ?? Resources.color.white,
              hintText: labelText,
              hintStyle: GoogleFonts.inter(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w400,
                  color: Resources.color.textSecondary2),
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Resources.color.borderEmphasis, width: 1)),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Resources.color.subBrand, width: 1)),
            )
          : InputDecoration(
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: Resources.color.borderEmphasis),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  borderSide:
                      BorderSide(color: Resources.color.subBrand, width: 1)),
              filled: true,
              fillColor: backgroundColor ?? Resources.color.white,
              hintText: labelText,
              hintStyle: GoogleFonts.inter(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w400,
                  color: Resources.color.textSecondary2),
            ),
      style: GoogleFonts.inter(
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          color: Resources.color.textHeadLine),
      enabled: enabled,
      controller: controller,
      onSaved: onSaved,
      onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      minLines: minLines,
      validator: validator,
      initialValue: initialValue,
      inputFormatters: inputFormaters,
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
    );
  }
}
