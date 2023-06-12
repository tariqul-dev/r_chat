import 'package:chat_app/src/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FormFieldWithLabel extends StatelessWidget {
  final String labelText;
  IconData? iconData;
  bool isPassword;

  FormFieldWithLabel({
    required this.labelText,
    this.iconData,
    this.isPassword = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child:
                Text(labelText, style: Theme.of(context).textTheme.titleSmall),
          ),
          CustomTextFormField(hintText: labelText, iconData: iconData, isPassword: isPassword,),
        ],
      ),
    );
  }
}
