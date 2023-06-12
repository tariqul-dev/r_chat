import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  IconData? iconData;
  bool isPassword;

  CustomTextFormField({
    required this.hintText,
    this.iconData,
    this.isPassword = false,
    super.key,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(widget.iconData),
        suffixIcon: widget.isPassword
            ? GestureDetector(
                child: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                onTap: () {
                  isVisible = !isVisible;
                  setState(() {
                  });
                },
              )
            : null,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        filled: true,
      ),
      obscureText: widget.isPassword && !isVisible,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
