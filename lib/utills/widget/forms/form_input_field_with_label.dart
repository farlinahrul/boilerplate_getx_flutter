import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:boilerplate_getx_flutter/resources/resources.dart';

class FormInputFieldWithLabel extends StatelessWidget {
  FormInputFieldWithLabel(
      {required this.controller,
       this.iconSuffix,
      required this.labelText,
      required this.errorText,
      required this.validator,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.enabled = true,
      this.expands = false,
      this.minLines,
      this.maxLines,
      required this.onTap,
      required this.onChanged,
      required this.onSaved});

  final TextEditingController controller;
  final Widget? iconSuffix;
  final String labelText;
  final String? errorText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool enabled;
  final bool expands;
  final int? minLines;
  final int? maxLines;
  final void Function() onTap;
  final void Function(String) onChanged;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Resources.color.textHeadLine),
      expands: expands,
      cursorColor: Resources.color.subBrand,
      decoration: InputDecoration(
        fillColor: Resources.color.bgPrimary,
        errorText: errorText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Resources.color.emphasizeBorder,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Resources.color.emphasizeBorder,
          ),
        ),
        hintText: labelText,
        hintStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Resources.color.textSecondary2),
        suffixIcon:
            Padding(padding: EdgeInsets.only(right: 16), child: iconSuffix),
        suffixIconConstraints: BoxConstraints(
          minWidth: 2,
          minHeight: 2,
        ),
      ),
      enabled: enabled,
      controller: controller,
      onSaved: onSaved,
      onChanged: onChanged,
      onTap: onTap,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      minLines: minLines,
      validator: validator,
    );
  }
}
