import 'package:boilerplate_getx_flutter/utills/widget/form_plain_input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:boilerplate_getx_flutter/resources/resources.dart';
import 'package:boilerplate_getx_flutter/utills/helper/constant.dart';
import 'package:boilerplate_getx_flutter/utills/helper/validator.dart';
import 'package:boilerplate_getx_flutter/utills/widget/text/text_inter.dart';

class TextWithPlainTextField extends StatelessWidget {
  final String title;
  final String labelText;
  final TextEditingController controller;
  final bool disableSpacing;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const TextWithPlainTextField({
    Key? key,
    required this.title,
    required this.labelText,
    required this.controller,
    this.validator,
    this.onChanged,
    this.disableSpacing = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInter(
          size: 14,
          color: Resources.color.textHeadLine,
          fontWeight: Weightenum.regular,
          text: title,
        ),
        const SizedBox(height: 4),
        FormPlainInputField(
          controller: controller,
          labelText: labelText,
          validator: validator,
          onChanged: onChanged,
          onSaved: (value) => controller.text = value!,
        ),
        disableSpacing ? Container() : const SizedBox(height: 16),
      ],
    );
  }
}
